# See InSpec docs on how to build your tests
# https://github.com/chef/inspec/tree/master/docs

describe file("/bin/bash") do
  it { should exist }
  it { should be_owned_by 'root' }
  its(:mode) { should eq 0666 }
end
