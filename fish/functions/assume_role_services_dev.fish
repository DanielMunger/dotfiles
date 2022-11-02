function assume_role_services_dev
    eval (~/code/repos/developer_tools/scripts/fetch-sso-creds.js -a 758675381231 -n AdministratorAccess12H -p services-dev -r us-west-2 -f json)
    assume-role services-dev | echo && eval (assume-role services-dev)
end
