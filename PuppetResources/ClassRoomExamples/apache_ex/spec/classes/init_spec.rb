require 'spec_helper'
describe 'apache_ex' do
  context 'with default values for all parameters' do
    it { should contain_class('apache_ex') }
  end
end
