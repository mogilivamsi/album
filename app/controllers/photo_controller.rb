class PhotoController < ApplicationController
  def index
   @images = Photo.all
 end

end
