#!/usr/bin/env bash

set -ex

rsync -avzh --progress ~/.config/autostart/ .config/autostart
rsync -avzh --progress .config/autostart/ ~/.config/autostart
