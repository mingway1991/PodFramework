#!/bin/zsh

poddir=$(echo `gem env gemdir`)
embed_frameworks_script_file_path="${poddir}/gems/cocoapods-1.3.1/lib/cocoapods/generator/embed_frameworks_script.rb"
echo "copy embed_frameworks_script.rb to ${embed_frameworks_script_file_path}"
sudo curl -fsSL https://raw.githubusercontent.com/mingway1991/PodFramework/master/embed_frameworks_script.rb -o "$embed_frameworks_script_file_path"