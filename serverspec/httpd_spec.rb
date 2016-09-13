require 'spec_helper'
describe package('httpd') do
  it { should be_installed }
end
describe service('httpd') do
  it { should be_running   }
end
describe port(80) do
  it { should be_listening }
end
check_config = "/etc/httpd/conf.d/#{ENV['HOSTNAME']}.conf"
describe file(check_config) do
  it { should be_file }
  it { should contain "ServerName #{ENV['HOSTNAME']}" }
describe file(check_config) do
  it { should be_mode 644 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end