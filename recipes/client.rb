#
# Cookbook Name:: vms
# Recipe:: client
#
# Copyright 2012, Gridcentric Inc.
#

include_recipe "apt"

::Chef::Resource::AptRepository.send(:include, Gridcentric::Vms::Helpers)

if not platform?("ubuntu")
  raise "Unsupported platform: #{node["platform"]}"
end

apt_repository "gridcentric-#{node["vms"]["os-version"]}" do
  uri construct_repo_uri(node["vms"]["os-version"], node)
  components ["gridcentric", "multiverse"]
  key construct_key_uri(node)
  notifies :run, resources(:execute => "apt-get update"), :immediately
  only_if { platform?("ubuntu") }
end

if ["folsom", "essex", "diablo"].include?(node["vms"]["os-version"])
  package "python-novaclient" do
    action :upgrade
  end
  package "novaclient-gridcentric" do
    action :upgrade
    options "-o APT::Install-Recommends=0"
  end
else
  package "python-cobalt" do
    action :upgrade
  end
  package "cobalt-novaclient" do
    action :upgrade
    options "-o APT::Install-Recommends=0"
  end
end
