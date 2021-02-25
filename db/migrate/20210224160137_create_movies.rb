class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :year
      t.string :genre
      t.string :director
      t.string :description
      t.string :additional_information

      t.timestamps
    end
  end
end
