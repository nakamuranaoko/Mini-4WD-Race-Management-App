class MachinePhoto < ApplicationRecord
  belongs_to :machine
  mount_uploader :image_url, MachinePhotoUploader # CarrierWaveでアップロード
end
