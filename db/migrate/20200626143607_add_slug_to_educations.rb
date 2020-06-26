class AddSlugToEducations < ActiveRecord::Migration[6.0]
  def change
    add_column :educations, :slug, :string
    add_index :educations, :slug, unique: true
  end
end
