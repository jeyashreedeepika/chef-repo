# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "jeyashreedeepika"
client_key               "#{current_dir}/jeyashreedeepika.pem"
chef_server_url          "https://api.chef.io/organizations/test-organization1"
cookbook_path            ["#{current_dir}/../cookbooks"]


cookbook_copyright "TCS"
cookbook_license "none"
cookbook_email "jeyashreedeepika.s@tcs.com"
