search("aws_opsworks_instance").each do |instances|
  Chef::Log.info("********** This instance's instance ID is '#{instances['instance_id']}' **********")
  Chef::Log.info("********** This instance's public IP address is '#{instances['public_ip']}' **********")
  Chef::Log.info("********** This instance's status is  '#{instances['status']}' **********")
end

package "httpd"

service "httpd" do
  action [:enable, :start]
end

execute "index.html" do
  command "echo 'this is test' > /var/www/html/index.html"
end
