class OrganizationsController < ApplicationController

  def index
    @users = User.all.order(birth: "ASC")
  end
end
