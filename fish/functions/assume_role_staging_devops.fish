function assume_role_staging_devops
   eval (~/code/repos/developer_tools/scripts/fetch-sso-creds.js -a 086051635620 -n DevOpsRelease1H -p staging-devops -r us-west-2 -f json)
    assume-role staging-devops | echo && eval (assume-role staging-devops)
end
