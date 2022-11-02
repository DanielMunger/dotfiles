function assume_role_services_devops
   eval (~/code/repos/developer_tools/scripts/fetch-sso-creds.js -a 357301790373 -n DevOpsRelease1H -p services-devops -r us-west-2 -f json)
    assume-role services-devops | echo && eval (assume-role services-devops)
end
