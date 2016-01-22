# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "vdaubry"
client_key               "#{current_dir}/vdaubry.pem"
validation_client_name   "vda-validator"
validation_key           "#{current_dir}/vda-validator.pem"
chef_server_url          "https://api.chef.io/organizations/vda"
cookbook_path            ["#{current_dir}/../cookbooks"]