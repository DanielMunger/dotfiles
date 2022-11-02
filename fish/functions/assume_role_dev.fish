function assume_role_dev
   eval (~/code/repos/developer_tools/scripts/fetch-sso-creds.js -a 916533587194 -n AdministratorAccess12H -p dev-admin -r us-west-2 -f json)
    assume-role dev-admin | echo && eval (assume-role dev-admin)
end
