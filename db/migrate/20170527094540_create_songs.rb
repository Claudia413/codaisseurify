class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :rating
      t.date :release_date

      t.timestamps
    end
  end
end
