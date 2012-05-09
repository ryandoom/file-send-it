class UploadsController < ApplicationController
  before_filter :authenticate_user!

  def index
    hello = "whats up"
    @uploads = current_user.uploads if current_user
  end

  def new
    @upload = Upload.new
  end

  def create
    @upload = Upload.new(params[:upload])
    @upload.user = current_user

    if @upload.save
      redirect_to uploads_path, :notice => "Your upload was successful"
    else
      render :new
    end
  end

  def destroy 
    upload = current_user.uploads.find(params[:id])
    if(upload.destroy)
      redirect_to uploads_path, :notice => "Your upload has been deleted buddy."
    else
      redirect_to uploads_path, :notice => "Sorry, I can't delete that file."
    end

  end
end
