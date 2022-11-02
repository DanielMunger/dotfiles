function assume_role_ds
   eval (~/code/repos/developer_tools/scripts/fetch-sso-creds.js -a 791555158882 -n AdministratorAccess12H -p ds-admin -r us-west-2 -f json)
    assume-role ds-admin | echo && eval (assume-role ds-admin)
end
