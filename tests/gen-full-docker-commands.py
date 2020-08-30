#!/usr/bin/env python3

import os,sys
from pprint import pprint

import shutil, shlex
from subprocess import check_output

MAIN_YML_TEMPLATE='''
#!/usr/bin/env bash

set -ex

{{docker_build_stages}}

'''


def yml2():
  all_file_in_tests_dir = check_output(shlex.split('ls -1 tests')).decode('utf-8').split()
  install_sh_files = filter(lambda x: x.find('install') > -1, all_file_in_tests_dir)
  install_sh_names = map(lambda x: x.replace('.sh',''), install_sh_files)
  docker_commands = map(lambda x: 'docker run -t logickee/ubuntu-1804-zsh /{{install_sh_name}}.sh | tee logs/docker_{{install_sh_name}}.log'.replace('{{install_sh_name}}', x), install_sh_names)

  fo_main_yml=open('/home/logic/_workspace/dotfiles/tests/full_docker_commands.sh','r+')
  fo_main_yml.truncate(0)

  fo_main_yml.write(MAIN_YML_TEMPLATE.replace('{{docker_build_stages}}', '\n'.join(docker_commands) ))


yml2()

print('done')