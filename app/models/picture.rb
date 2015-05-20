class Picture < ActiveRecord::Base
    has_many :commentpics
    mount_uploader :picture, PictureUploader
end
