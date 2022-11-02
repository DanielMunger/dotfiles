function assume_role_tempest_release
   eval (~/code/repos/developer_tools/scripts/fetch-sso-creds.js -a 908113025037 -n TempestRelease -p tempest-release -r us-west-2 -f json)
    assume-role tempest-release | echo && eval (assume-role tempest-release)
end

