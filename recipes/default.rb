#
# Cookbook:: cibook
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

file "/tmp/ballu" do
  content "This is Ballu the bear"
end

file "/tmp/newballu" do
  content "This is new Ballu"
  mode '0777'
end
