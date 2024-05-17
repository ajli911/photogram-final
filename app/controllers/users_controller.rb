class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  
  def index
    matching_users = User.all
    @list_of_users = matching_users.order({ :username => :asc })

    render({ :template => "user_templates/index"})
  end

  def show
    url_username = params.fetch("path_username")
    matching_usernames = User.where({ :username => url_username})
    @the_user = matching_usernames.first

      if @the_user == nil
        redirect_to("/404")
      else 
        render({ :template => "/user_templates/show"})
      end
  end
end
