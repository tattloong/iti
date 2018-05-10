class AddFieldsToWent < ActiveRecord::Migration[5.1]
  def change
    add_column :wents, :latitude, :float
    add_column :wents, :longtitude, :float
  end
end
