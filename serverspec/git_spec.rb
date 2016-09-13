require 'spec_helper'
describe file("/var/www/#{ENV['HOSTNAME']}") do
  it { should be_directory }
end