require 'rest_client'
require  'json'
      
def initialize(ip_addr, user, pass, protocol='https://', device='ChefDeploy', component='ChefHandler')
  @ip_addr = ip_addr
  @protocol = protocol
  @user = user
  @pass = pass
  @device = device
  @component = component
  @severity = 'Debug'
  @path = '/zport/dmd/evconsole_router'
end

url = @protocol + @user + ':' + @pass + '@' + @ip_addr + @path
      
jdata = { "action" => "EventsRouter", "method" => "add_event", "data"  => [{ "device" => @device, "summary" => message, "component" => @component, "severity" => @severity, "evclass" => "/Chef", "evclasskey" => "chef_handler_#{node.name}" }], "tid" => 1 }.to_json
response = RestClient.post url,  jdata, { :content_type => :json, :accept => :json, :verify_ssl => FALSE }