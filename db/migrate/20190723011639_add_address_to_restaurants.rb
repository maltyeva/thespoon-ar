class AddAddressToRestaurants < ActiveRecord::Migration[5.2]
  def change
    # action :table_name, :name_of_column, :type_of_column
    add_column :restaurants, :address, :string
    add_column :restaurants, :chef, :string
  end
end
