require 'spec_helper'

describe 'Configuration' do
  it 'set proper configuration' do
    SendGrid.configure {|c| c.api_user = 'vladr'; c.api_key = 'password' }
    SendGrid.api_user.should eq('vladr')
    SendGrid.api_key.should eq('password')
  end
end
