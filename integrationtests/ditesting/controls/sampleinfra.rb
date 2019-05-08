# encoding: utf-8
# copyright: 2018, The Authors

title 'check azure resoruce group'

#example of passing test
control 'sampleinfra01' do
  describe azurerm_resource_groups do
      its('names') { should include 'di-ansible-ci' }
  end
end

# example of failing tests
control 'sampleinfra02' do
  describe azurerm_resource_groups do
      its('names') { should include 'di-ansible-ci1' }
  end
end