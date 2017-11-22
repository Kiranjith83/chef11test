#
# Cookbook:: chef11test
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
 bash 'update_patches' do
    code <<-EOH
        echo `date` >> /tmp/executed.log
        sudo yum -y update
    EOH
end
