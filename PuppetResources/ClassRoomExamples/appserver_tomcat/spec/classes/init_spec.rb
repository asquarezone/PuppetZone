require 'spec_helper'
describe 'appserver_tomcat' do
  context 'with default values for all parameters' do
    it { should contain_class('appserver_tomcat') }
  end
end
