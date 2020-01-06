class ImageFileController < ApplicationController
    skip_before_action :verify_authenticity_token
    def upload
        raise ArgumentError, 'invalid params' if params[:image].blank? || params[:name].blank?
        
        imageFile = ImageFile.create(image: params[:image])
        
        imageFile.title = params[:title]
        imageFile.name = params[:name]
        
        imageFile.save!
        
        render json: {
            title: imageFile.title,
            name: imageFile.name,
            image: imageFile.image.url
            }
    end
end
