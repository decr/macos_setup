#!/bin/sh
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

rbenv install 2.2.2
rbenv global 2.2.2