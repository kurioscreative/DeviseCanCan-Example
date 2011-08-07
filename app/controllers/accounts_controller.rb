class AccountsController < InheritedResources::Base
  defaults :resource_class => User, :collection_name => 'accounts', :instance_name => 'account'
  before_filter :authenticate_user!
  load_and_authorize_resource :class => "User"
end