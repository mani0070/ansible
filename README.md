# Provision azure infrastructure using ansible
# Run integration test using inspec

## Display human readable output
export ANSIBLE_STDOUT_CALLBACK=debug

## inspec tests pre-reqs - spn info
export AZURE_SUBSCRIPTION_ID=<id>
export AZURE_CLIENT_ID=<id>
export AZURE_CLIENT_SECRET=<secret>
export AZURE_TENANT_ID=<id>

## running the ansible playbook with different options
```
ansible-playbook provision.yml -i inventories/staging -v

inspec exec ../../../integrationtests/ditesting -t azure:// --controls='/sampleinfra[0-9]/'

ansible-playbook deporvision.yml -i inventories/staging -v
```

## running all the above in one command

ansible-playbook fullrun.yml -i inventories/staging -v

