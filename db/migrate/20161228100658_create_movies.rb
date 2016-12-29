class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :year
      t.float :length
      t.string :description
      t.string :genre

      t.float :rating
    end
  end
end
