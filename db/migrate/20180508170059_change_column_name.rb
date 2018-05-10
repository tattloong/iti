class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :wents, :longtitude, :longitude
  end
end
