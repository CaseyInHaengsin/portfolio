class CreateEducations < ActiveRecord::Migration[6.0]
  def change
    create_table :educations do |t|
      t.string :place
      t.string :study_focus
      t.boolean :show

      t.timestamps
    end
  end
end
