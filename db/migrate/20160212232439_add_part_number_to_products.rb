class AddPartNumberToProducts < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.date :release_date
      t.integer :highest_chart_rating
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
