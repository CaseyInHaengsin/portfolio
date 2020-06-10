class ChangeEducationsToEducation < ActiveRecord::Migration[6.0]
  def change
    rename_table :educations, :education
  end
end
