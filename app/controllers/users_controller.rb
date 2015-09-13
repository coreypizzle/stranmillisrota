class UsersController < Devise::RegistrationsController
  prepend_before_filter :require_no_authentication, :only => :none
end