#!/usr/bin/env python3

from fabric.api import local, run

def helloFabric():
  local('hostname')