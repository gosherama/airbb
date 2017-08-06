class PhotosController < ApplicationController

  def destroy
    #correspond à l’id de la photo concernée
    @photo = Photo.find(params[:id])
    room = @photo.room
    
    @photo.destroy
    #réactualise la liste des photos de ce logement
    @photos = Photo.where(room_id: room.id)
    #pour la suppression immédiate 
    respond_to :js
  end
end