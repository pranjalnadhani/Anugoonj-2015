class CreateColleges < ActiveRecord::Migration
  def self.up
    create_table :colleges do |t|
      t.string :name,       null: false
      t.string :group_name, null: false
      t.string :contact_no, null: false
      t.boolean :confirmed, default: false, null: false
      t.string :event

      t.timestamps null: false
    end
  end
  
  def self.down
    drop_table :colleges
  end
end
