require 'spec_helper'

describe 'ansible-psad::default' do

  describe file('/etc/hosts') do
    it { should be_owned_by('root') }
    it { should be_grouped_into 'root' }
    it { should be_mode 644 }
  end

end
