class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
        t.string :first_name, :last_name, :email, :password_hash, :phone_number

        t.timestamps
    end
  end
end
