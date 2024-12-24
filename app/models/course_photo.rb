class CoursePhoto < ApplicationRecord
  belongs_to :event
  mount_uploader :image_url, CoursePhotoUploader
end
