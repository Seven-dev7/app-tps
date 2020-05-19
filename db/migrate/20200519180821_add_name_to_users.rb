class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
	add_column :users, :idcard, :string
	add_column :users, :vitalcard, :string
	add_column :users, :driverlicence, :string
	add_column :users, :dateofbirth, :string
	add_column :users, :zipcode, :string
	add_column :users, :phone, :string
	add_column :users, :adress, :text
	add_column :users, :city, :string
  end
end
