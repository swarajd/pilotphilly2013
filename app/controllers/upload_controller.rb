class UploadController < ApplicationController
    def new

    end
    def create
       name = params[:upload][:file].original_filename
       directory = "public/files/upload" #going to change this for security
       path = File.join(directory, name)
       File.open(path, "wb") {|f| f.write(params[:upload][:file].read) }
       flash[:notice] = "File uploaded"
       redirect_to "/upload/new"
    end
end
