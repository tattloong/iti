class AddUserToWents < ActiveRecord::Migration[5.1]
  def change
    add_reference :wents, :user, foreign_key: true
  end
end
