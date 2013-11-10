class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def process_file
    system('bash ../bash/encryptFile.sh '+params[:filename]+' '+params[:filename]+'.des3 '+@user.unique_id+@user.name)
  end
end
