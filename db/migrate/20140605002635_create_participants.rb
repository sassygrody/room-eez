class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
    	t.belongs_to :user
    	t.belongs_to :event
      t.timestamps
    end
  end
end
