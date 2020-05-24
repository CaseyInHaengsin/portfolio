class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.text :skill
      t.boolean :show

      t.timestamps
    end
  end
end
