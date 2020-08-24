#!/usr/bin/env python

import os
import sys
import logging
import traceback
from pprint import pprint
import shlex

from subprocess import run, PIPE, Popen

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
