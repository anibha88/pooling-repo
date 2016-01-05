class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :chattiness
      t.string :smoking
      t.string :pets
      t.string :music

      t.timestamps null: false
    end
  end
end
