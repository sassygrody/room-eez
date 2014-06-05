class CreateBillParticipations < ActiveRecord::Migration
  def change
    create_table :bill_participations do |t|
    	t.integer :user_id, :bill_id
    	t.float :iou

      t.timestamps
    end
  end
end
