#!/usr/bin/env python3

import os,sys
from pprint import pprint

sh_test_template='''#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install \"{{TESTINSTALL}}\"'
  {{TESTINSTALL}}
  installHelloworld

  echo 'testing install done'
'''.strip()

docker_command_template='docker run -it logickee/ubuntu-1804-zsh /{{TESTINSTALL}}.sh'

travis_template='''
services:
  - docker

before_install:
  - docker pull ubuntu
  - docker build -t logickee/ubuntu-1804-zsh .

'''.strip()

# script:
# {{docker_commands}}

# docker_test_command='docker run -it logickee/ubuntu-1804-zsh /{{install}}.sh'

def getRcFiles():
  fi_install_rc = open('./.install.rc')
  list_install = filter(lambda x: x.find('install') == 0 , fi_install_rc.readlines())
  list_install = map(lambda x: x.strip().replace('\n','').replace('(){',''), list_install)
  return list_install

def generateSubSh():
  list_install = getRcFiles()

  for test_install_item in list_install:
    # pprint('./tests/{}.sh'.format(test_install_item))
    fo_test_install_sh = open('./tests/{}.sh'.format(test_install_item), 'w+')
    fo_test_install_sh.truncate(0)
    fo_test_install_sh.write(sh_test_template.replace('{{TESTINSTALL}}', test_install_item))

def genTravisYml():
  list_install = getRcFiles()

  docker_commands = []
  for test_install_item in list_install:
    docker_commands.append(test_install_item)

  fo_travis_yml = open('tests/.travis_docker_test.yml','r+')
  fo_travis_yml.truncate(0)

  docker_commands=(
    '\n'.join(
      map(lambda x: '  - '+docker_command_template.replace('{{TESTINSTALL}}', x), docker_commands)
      )
    )
  fo_travis_yml.write(travis_template.replace('{{docker_commands}}', docker_commands))

def main():
  list_install = getRcFiles()
  # pprint(list(list_install))
  generateSubSh()
  genTravisYml()

  print('helloworld')

if __name__ =='__main__':
  main()