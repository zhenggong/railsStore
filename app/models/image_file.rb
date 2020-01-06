class ImageFile < ActiveRecord::Base
    mount_uploader :image, PictureUploader
    
    validates :title, presence: true
    validates :image, presence: true
    validates :name, presence: true
end
