class RenameCorusePhotosToCoursePhoto < ActiveRecord::Migration[7.2]
  def change
    rename_table :coruse_photos, :course_photos
  end
end
