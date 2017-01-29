require 'spec_helper'
describe 'params_demo' do
  context 'with default values for all parameters' do
    it { should contain_class('params_demo') }
  end
end
