# # encoding: utf-8

# Inspec test for recipe task1_community::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('jenkins') do
  it { should be_installed }
end

describe service('jenkins') do
  it { should be_enabled }
  it { should be_running }
end

describe command('curl -IL localhost:8080') do
  its('stdout') { should match /200 OK/ }
end

describe command('curl -IL localhost:8080') do
  its('stdout') { should match /X-Jenkins:/ }
end