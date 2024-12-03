class AddCourseLengthToRaceTimes < ActiveRecord::Migration[7.2]
  def change
    add_column :race_times, :course_length, :float
  end
end
