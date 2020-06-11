class DropResume < ActiveRecord::Migration[6.0]
  def change
    drop_table :resumes
  end
end
