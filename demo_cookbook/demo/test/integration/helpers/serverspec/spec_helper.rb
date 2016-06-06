require 'serverspec'
require 'yarjuf'

if (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM).nil?
  set :backend, :exec
else
  set :backend, :cmd
  set :os, family: 'windows'
end


RSpec.configure do |c|
  c.formatter = 'JUnit'
end
