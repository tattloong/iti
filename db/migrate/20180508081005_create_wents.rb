class CreateWents < ActiveRecord::Migration[5.1]
  def change
    create_table :wents do |t|
      t.string :country
      t.string :destination
      t.integer :duration
      t.string :activity
      t.integer :price


      t.timestamps
    end
  end
end
