#!/usr/bin/env bash

# Install Python (python 2.7 and 3.x)
[[ -z $(which python) ]] && sudo apt-get --yes --force-yes install python
[[ -z $(which python2.7) ]] && sudo apt-get --yes --force-yes install python2.7
[[ -z $(which python3) ]] && sudo apt-get --yes --force-yes install python3

# Copy latest version of "send email" python script
wget -P script/ https://raw.githubusercontent.com/QuentinCG/Base-Scripts/master/OS_Independent/utils/send_email.py
