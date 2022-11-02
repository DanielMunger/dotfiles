function assume_role_staging_admin
   eval (~/code/repos/developer_tools/scripts/fetch-sso-creds.js -a 086051635620 -n AdministratorAccess1H -p staging-admin -r us-west-2 -f json)
    assume-role staging-admin | echo && eval (assume-role staging-admin)
end
