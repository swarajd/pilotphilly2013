class SubmitController < ApplicationController
  def submit_file
    system('bash ../bash/encryptFile.sh '+params[:user][:fl]+' '+params[:user][:fl]+'.des3 '+@user.unique_id+@user.name)
  end
  def view_files
    redirect_to '/Submit/submit'
    puts 'REDIRECTED'
  end
end
