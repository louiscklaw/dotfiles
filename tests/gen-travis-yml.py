#!/usr/bin/env python3

import os,sys
from pprint import pprint

import shutil, shlex
from subprocess import check_output

MAIN_YML_TEMPLATE='''
# https://docs.travis-ci.com/user/conditional-builds-stages-jobs/
# https://docs.travis-ci.com/user/conditions-v1
stages:

# docker_build_stages_start
{{docker_build_stages}}
# docker_build_stages_end

  - name: Build_docker
  - name: Unit_test
  - name: Merge
  - name: Cron
    if: type = cron
'''

STAGE_TEMPLATE='''    # stage_template_start
    - stage: {{stage_name}}
      if: branch == {{branch_to_build}}

      before_install:
        - docker pull ubuntu
        - docker build -t logickee/ubuntu-1804-zsh .
        - docker container prune -f
        - rm -rf /home/logic/_workspace/dotfiles/logs/*.log

      script:
{{script_content}}
    # stage_template_end
'''

SCRIPT_CONTENT_TEMPLATE='''        #SCRIPT_CONTENT_START
        - docker run -t logickee/ubuntu-1804-zsh /{{test_sh}}.sh | tee logs/docker_{{test_sh}}.log
        #SCRIPT_CONTENT_END
'''

DOCKER_BUILD_YML_TEMPLATE='''
services:
  - docker

jobs:
  include:
{{stage_content}}
'''



all_file_in_tests_dir = check_output(shlex.split('ls -1 tests')).decode('utf-8').split()
install_sh_files = filter(lambda x: x.find('install') > -1, all_file_in_tests_dir)

# pprint(list(install_sh_files))
stage_names = map(lambda x: x.replace('.sh',''), install_sh_files)
stage_in_main_yml = map(lambda x: '  - name: {}'.format(x), stage_names)

test='\n'.join(list(stage_in_main_yml))
# sys.exit()

fo_main_yml=open('/home/logic/_workspace/dotfiles/.travis.yml','r+')
fo_main_yml.truncate(0)

fo_main_yml.write(MAIN_YML_TEMPLATE.replace('{{docker_build_stages}}', test ))


sys.exit()


list_stage_content = []
for i in install_sh_files:
  file_name_without_ext = i.replace('.sh','')
  script_content = SCRIPT_CONTENT_TEMPLATE.replace('{{test_sh}}',file_name_without_ext)

  stage_content = STAGE_TEMPLATE.replace('{{stage_name}}',file_name_without_ext).replace('{{script_content}}',script_content).replace('{{branch_to_build}}','test/{}'.format(file_name_without_ext))

  list_stage_content.append(stage_content)



fo_docker_yml = open('tests/.travis_docker_test.yml','r+')
fo_docker_yml.truncate(0)

fo_docker_yml.writelines([
  DOCKER_BUILD_YML_TEMPLATE
    .replace('{{stage_content}}','\n'.join(list_stage_content))
])

print('done')