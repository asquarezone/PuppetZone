require 'spec_helper'
describe 'subclass_ex' do
  context 'with default values for all parameters' do
    it { should contain_class('subclass_ex') }
  end
end
