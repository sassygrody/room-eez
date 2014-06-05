class CreateChoreParticipations < ActiveRecord::Migration
  def change
    create_table :chore_participations do |t|
    	t.belongs_to :chore
    	t.belongs_to :user

      t.timestamps
    end
  end
end
