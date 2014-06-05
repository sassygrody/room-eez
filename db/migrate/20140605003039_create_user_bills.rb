class CreateUserBills < ActiveRecord::Migration
  def change
    create_table :user_bills do |t|
    	t.integer :user_id, :bill_id
    	t.float :iou

      t.timestamps
    end
  end
end
