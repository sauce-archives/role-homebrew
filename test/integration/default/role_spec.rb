# See InSpec docs on how to build your tests
# https://github.com/chef/inspec/tree/master/docs

describe file("/usr/local/bin/brew") do
  it { should exist }
  it { should be_executable }
end

describe file("/usr/local/bin/git") do
  it { should exist }
  it { should be_executable }
end

describe command("/usr/local/bin/brew list") do
  its('stdout') { should match(/git/) }
end

describe command("/usr/local/bin/brew cask list") do
  its('stdout') { should match(/atom/) }
end
