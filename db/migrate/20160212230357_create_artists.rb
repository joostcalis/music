class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.string :photo

      t.timestamps null: false
    end
  end
end
