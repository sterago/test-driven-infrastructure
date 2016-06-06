#
# Cookbook Name:: demo
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'demo::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    it 'creates the cronjob executable' do
      expect(chef_run).to create_cookbook_file('/usr/local/bin/foo')
    end
    it 'creates the cronjob ' do
      expect(chef_run).to create_cron('foo')
                              .with('command'=>'/usr/local/bin/foo')
                              .with('user'=>'jsmith')
    end
    it 'creates the cronjob user' do
      expect(chef_run).to create_user('jsmith')
    end
  end
end
