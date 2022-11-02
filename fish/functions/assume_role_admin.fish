function assume_role_admin
   eval (~/code/repos/developer_tools/scripts/fetch-sso-creds.js -a 908113025037 -n MerchantMonitoringAdmin -p mm-admin -r us-west-2 -f json)
    assume-role mm-admin | echo && eval (assume-role mm-admin)
end
