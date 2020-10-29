class UsersController < ApplicationController

  def index
    @users = User.all.order(birth: "ASC")
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      for i in 0..@user.tens_age do
        age = Age.new
        age.years = i
        age.user_id = @user.id
        age.save
      end
      redirect_to root_path
    else
      render :new
    end

  end


  private

  def user_params
    params.require(:user).permit(:image, :name, :birth)
  end
end
