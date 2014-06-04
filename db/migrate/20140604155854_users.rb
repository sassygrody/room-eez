class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
        t.string :first_name, :last_name, :email, :password_digest, :phone_number

        t.timestamps
    end
  end
end
