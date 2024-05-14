class UsersController < ApplicationController
  def index
    render({ :template => "/user_templates/index"})
  end
end
