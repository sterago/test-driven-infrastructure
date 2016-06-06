require 'spec_helper'

describe 'demo::default' do
  describe cron do
    it {should have_entry('* * * * * /usr/local/bin/foo').with_user('jsmith')}
  end
end
