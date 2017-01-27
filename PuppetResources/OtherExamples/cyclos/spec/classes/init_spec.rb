require 'spec_helper'
describe 'cyclos' do
  context 'with default values for all parameters' do
    it { should contain_class('cyclos') }
  end
end
