class CreateParticipants < ActiveRecord::Migration
  def self.up
    create_table :participants do |t|
      t.string :name,        null: false
      t.string :email,       null: false
      t.string :contact_no,  null: false
      t.integer :college_id, null: false

      t.timestamps null: false
    end
  end
  
  def self.down
    drop_table :participants
  end
end
