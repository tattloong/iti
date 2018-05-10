class AddAddressToWents < ActiveRecord::Migration[5.1]
  def change
    add_column :wents, :address, :string
  end
end
