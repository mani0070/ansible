# encoding: utf-8
# copyright: 2018, The Authors

title 'check azure resoruce group'

control 'azurerm_resource_groups' do
  describe azurerm_resource_groups do
      its('names') { should include 'di-ansible-ci' }
  end
end