class SubmitController < ApplicationController
  def submit_file
    system('bash ../bash/encryptFile.sh '+params[:filename]+' '+params[:filename]+'.des3 '+params[:user].unique_id+params[:user].name)
  end
  def view_files
    redirect_to 'submit.html.erb'
    puts 'REDIRECTED'
  end
end
