#!/bin/bash
set -e
slnfile=$(find -maxdepth 1 -name "*.sln")
echo "opening $slnfile"
/mnt/c/Program\ Files/Microsoft\ Visual\ Studio/2022/Professional/Common7/IDE/devenv.exe $(wslpath -w $PWD/$slnfile)>/dev/null 2>&1 &
