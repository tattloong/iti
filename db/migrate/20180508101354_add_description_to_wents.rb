class AddDescriptionToWents < ActiveRecord::Migration[5.1]
  def change
    add_column :wents, :description, :text
  end
end
