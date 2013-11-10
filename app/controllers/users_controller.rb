class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  def download_file(fname) # fname = WHATEVER_THE_FUCKING_NAME_IS.extension.des3
    temp = File.basename(fname,".des3")
    system('bash ../../bash/decryptFile.sh ../../files/'+@user.name+'/'+fname+' ../../files/'+@user.name+'/'+temp+@user.name.unique_id)
    #TODO add download functionality with paperclip
  end
  def delete_file(fname) # fname = WHATEVER_THE_FUCKING_NAME_IS.extension.des3
    system('rm -f ../../files/'+@user.name+'/'+fname)
  end
  def rename_file(fname,new_name) # fname = WHATEVER_THE_FUCKING_PIECE_OF_SHIT_NAME_IS.extension.des3, new_name = THE_NEW_FUCKING_NAME.extension
    system('cp ../../files/'+@user.name+'/'+fname+' ../../files/'+@user.name+'/'+new_name+'.des3')
    delete_file(fname)
  end
end