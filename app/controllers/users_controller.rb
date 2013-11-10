class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @Users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  def download_file(fname) # fname = file.extension.des3
    temp = File.basename(fname,".des3")
    system('bash ../../bash/decryptFile.sh ../../files/'+@user.name+'/'+fname+' ../../files/'+@user.name+'/'+temp+@user.name.unique_id)
    #TODO add download functionality with paperclip
  end
  def delete_file(fname) # fname = file.extension.des3
    system('rm -f ../../files/'+@user.name+'/'+fname)
  end
  def rename_file(fname,new_name) # fname = file.extension.des3, new_name = THE_NEW_FUCKING_NAME.extension
    system('cp ../../files/'+@user.name+'/'+fname+' ../../files/'+@user.name+'/'+new_name+'.des3')
    delete_file(fname)
  end
  def update
    @user = User.find_by_id(params[:id])
    @user.update_attributes(params[:fl])
    @user[:filename] = params[:fl]
    system('bash ../bash/encryptFile.sh '+File.basename(params[:user][:fl])+' '+File.basename(params[:user][:fl])+'.des3 '+@user.unique_id+@user.name)
    redirect_to index
  end
end
