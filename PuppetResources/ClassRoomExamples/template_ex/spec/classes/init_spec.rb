require 'spec_helper'
describe 'template_ex' do
  context 'with default values for all parameters' do
    it { should contain_class('template_ex') }
  end
end
