function assume_role_prod_devops
   eval (~/code/repos/developer_tools/scripts/fetch-sso-creds.js -a 908113025037 -n DevOpsRelease1H -p prod-devops -r us-west-2 -f json)
    assume-role prod-devops | echo && eval (assume-role prod-devops)
end
