class AddColumnsOnUsers < ActiveRecord::Migration
  def change
  	add_column :users, :firstname, :string
  	add_column :users, :last_name, :string
  	add_column :users, :gender, :string
  	add_column :users, :birthdate, :date
  	add_column :users, :contact_num, :integer
  	add_column :users, :description, :string
  	add_column :users, :coutry, :string
  end
end
