#!/usr/bin/env python
# coding:utf-8

import os
import sys
import logging
import traceback
from pprint import pprint
import shlex

from subprocess import run, PIPE, Popen

def checkPythonVersion():
  import platform
  return platform.python_version()

def checkPythonVersionFullfill( version_threshold):
  from packaging import version
  return version.parse(checkPythonVersion()) >= version.parse(version_threshold)


CWD = os.getcwd()
SCAN_DIR = CWD if len(sys.argv) < 2 else sys.argv[1]

SKIP_LIST=[
  'logickee','1','http'
]

print('SCAN_DIR:"{}"'.format(SCAN_DIR))

def checkLeak(should_not_appear, filepath_to_check):
  command = ['grep', '-ri', '{}'.format(should_not_appear), filepath_to_check]
  # print(' '.join(command))

  if (checkPythonVersionFullfill('3.7')):
    result = run(command, capture_output=True)
  else:
    # e.g. 3.6 for ubuntu 18.04
    result = run(command, stdout=PIPE)
    print(result.stdout)

  terms_found = result.stdout != b''

  if terms_found:
    print('command: ',' '.join(result.args))
    print(result.stdout)
    # print('{}:{}, {}, {}'.format(word, result.returncode, result.stdout, result.args))
    raise 'leakage found'

def readCredentialFile(filepath):
  file_content = open(filepath,'r').readlines()
  file_content = filter(lambda x: x.strip(), file_content)
  file_content = filter(lambda x: x[0] != '#', file_content)

  return set(file_content)

def parseCredentialFile():
  try:
    filepath='/home/logic/.credentials.rc'
    if os.getenv('CI',False):
      # for checking happening on travis
      # TODO: better handling on this
      env_names = ['DOCKERHUB_PASSWORD', 'DOCKERHUB_USER', 'GITHUB_TOKEN', 'SLACK_TOKEN', 'TRAVIS_AUTH_TOKEN', 'TRAVIS_TOKEN']
      return ['{}={}'.format(env_name, os.environ[env_name]) for env_name in env_names]
    else:
      if os.path.exists(filepath):

        content = readCredentialFile(filepath)
        content = map(lambda x: x.strip(), content)
        return map(lambda x: x.replace('export ',''), content)
      else:
        raise 'credentials filepath not found'
  except Exception as e:
    raise e

def clearBashValue(txt_value_in):
  output = txt_value_in

  if output[0]=="'":
    output = output[1:]

  if output[-1]=="'":
    output = output [:-1]

  if output[0]=='"':
    output = output[1:]

  if output[-1]=='"':
    output = output [:-1]

  return output


def credentialValue():
  temp1 = parseCredentialFile()
  temp2 = map(lambda x: x.split('=')[1:][0], temp1)
  temp3 = map(lambda x: clearBashValue(x), temp2)
  return temp3

def printBanner(text, text1):
  print('\n'*1)
  print('V'*76)
  print()
  print(' '* 16, text)
  print(' '* 16, text1)
  print()
  print('^'*76)
  print('\n'*1)


def main():
    printBanner('scanning for sensitive words', SCAN_DIR)
    should_not_appear = list(credentialValue())

    print('num of sensitive word {}'.format(len(should_not_appear)))
    print('scan start')
    for word in should_not_appear:
      if word not in SKIP_LIST:
        try:
          checkLeak(word, SCAN_DIR)
        except Exception as e:
          print('sensitive word found')
          raise e

    print('scan done')

if __name__ == '__main__':
  main()
