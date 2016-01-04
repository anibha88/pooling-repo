class AddFirstNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :bio, :string
    add_column :users, :birth_year, :integer
    add_column :users, :gender, :string
    add_column :users, :avatar, :string
  end
end
