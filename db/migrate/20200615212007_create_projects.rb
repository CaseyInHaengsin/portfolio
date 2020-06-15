class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      # t.string :place
      # t.string :study_focus
      # t.boolean :show
      t.string :title
      t.text :description
      t.boolean :show
      t.timestamps
    end
  end
end
