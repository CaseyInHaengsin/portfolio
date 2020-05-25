class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string :title
      t.text :description
      t.string :work_period
      t.boolean :show

      t.timestamps
    end
  end
end
