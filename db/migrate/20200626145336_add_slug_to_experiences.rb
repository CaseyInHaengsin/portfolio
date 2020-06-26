class AddSlugToExperiences < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :slug, :string
    add_index :experiences, :slug, unique: true
  end
end
