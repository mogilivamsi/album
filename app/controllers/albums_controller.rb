class AlbumsController < ApplicationController
def index
   @user = current_user
 end

 def show
   @album = Album.find_by_secret(params[:secret])
   if @album.nil?
     render :partial => "invalid" and return
   end
 end

 def new
   if current_user.nil?
     redirect_to :controller => :user, :action => :show and return
   else
     @album = Album.new
   end
 end



 def create
   @album = current_user.albums.build(params[:album])
   if @album.save
     redirect_to :controller => :albums, :action => :show, :secret => @album.secret and return
   else
     render :controller => :albums, :action => :new
   end
 end

 def upload_images
   @album = Album.find_by_secret(params[:album][:secret])
   if @album && params[:album][:photos]
     params[:album][:photos].each{|param|
       image = @album.photos.build(:owner => params[:owner])
       image.img = param
       image.save
     }
   end
   redirect_to :controller => :albums, :action => :show, :secret => @album.secret
 end




end
