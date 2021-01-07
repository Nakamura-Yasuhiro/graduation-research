class Video < ApplicationRecord
    validates :video, presence: true
    mount_uploader :video, VideoUploader
end
