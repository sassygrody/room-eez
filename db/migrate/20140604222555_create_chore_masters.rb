class CreateChoreMasters < ActiveRecord::Migration
  def change
    create_table :chore_masters do |t|
    	t.belongs_to :chore
    	t.belongs_to :user

      t.timestamps
    end
  end
end
