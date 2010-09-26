class IndexController < ApplicationController
  def index
    redirect_to "/users/#{current_user.id}"
  end
end