#!/bin/zsh

poddir=$(echo `gem env gemdir`)
embed_frameworks_script_file_path="${poddir}/gems/cocoapods-1.3.1/lib/cocoapods/generator/embed_frameworks_script.rb"
target_integrator_path="${poddir}/gems/cocoapods-1.3.1/lib/cocoapods/installer/user_project_integrator/target_integrator.rb"
xcconfig_helper_path="${poddir}/gems/cocoapods-1.3.1/lib/cocoapods/generator/xcconfig/xcconfig_helper.rb"
echo "copying embed_frameworks_script.rb to ${embed_frameworks_script_file_path}"
echo "copying target_integrator.rb to ${target_integrator_path}"
echo "copying xcconfig_helper.rb to ${xcconfig_helper_path}"
curl -fsSL https://raw.githubusercontent.com/mingway1991/PodFramework/master/embed_frameworks_script.rb -o "$embed_frameworks_script_file_path"
curl -fsSL https://raw.githubusercontent.com/mingway1991/PodFramework/master/target_integrator.rb -o "$target_integrator_path"
curl -fsSL https://raw.githubusercontent.com/mingway1991/PodFramework/master/xcconfig_helper.rb -o "$xcconfig_helper_path"
