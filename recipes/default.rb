#
# Cookbook:: cibook
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
include_recipe 'chef-vault'
vault = chef_vault_item(:credentials,'root')
node.set['root']['password'] = vault['password']

file "/tmp/ballu" do
  content "This is Ballu the bear"
end

file "/tmp/newballu" do
  content "This is new Ballu and lalu"
  mode '0777'
end

file "/tmp/newlalu" do
  content "This is lalu file of env : #{node['environment_name']}"
end

file "/tmp/newlaluvault" do
  content "this is lalu file and root password is : #{node['root']['password']}"
end
