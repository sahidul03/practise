class UsersController < ApplicationController

  def index
    @users=User.all

  end

  def new
    @user=User.new
  end

  def create
    @user=User.new
    # if params[:user][:files].any?
    #   index=0
    #   params[:user][:files].each do |ph|
    #     @user.albums[index]=params[:user][:files]
    #     index=index+1
    #   end
    # end
    # @user.albums=params[:user][:files]
    # @user.albums = [File.open('somewhere')]
    @user.name=params[:user][:name]
    @user.age=params[:user][:age]
    @user.profile_photo=params[:user][:profile_photo]
    # raise @user.inspect
    if @user.save
      # raise @user.inspect
      if params[:user][:files].any?
          # index=0
          params[:user][:files].each do |ph|
            Album.create(:user_id=>@user.id,:single_photo=>ph)
            # @user.albums[index]=params[:user][:files]
            # index=index+1
          end
      end
      redirect_to users_path
    else
      render 'new'
    end
  end

  protected
  def params_user
    params.require(:user).permit(:name, :age, :profile_photo)
  end


end
