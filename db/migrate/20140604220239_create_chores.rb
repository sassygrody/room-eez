class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
    	t.string :name, :description
    	t.date :happen_at
    	t.integer :creator_id #making associations to user last

      t.timestamps
    end
  end
end
