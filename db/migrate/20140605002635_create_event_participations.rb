class CreateEventParticipations < ActiveRecord::Migration
  def change
    create_table :event_participations do |t|
    	t.belongs_to :user
    	t.belongs_to :event
      t.timestamps
    end
  end
end
