class ChangeEducationToEducations < ActiveRecord::Migration[6.0]
  def change
    rename_table :education, :educations
  end
end
