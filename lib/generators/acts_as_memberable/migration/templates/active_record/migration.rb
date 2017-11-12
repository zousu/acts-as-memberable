class ActsAsMemberableMigration < ActiveRecord::Migration
  def self.up
    create_table :memberables, id: false do |t|
      t.integer :user_id
      t.integer :memberable_id
      t.string :memberable_type
    end
    add_index :memberables, [:memberable_id, :memberable_type]
    add_index :memberables, :user_id
  end

  def self.down
    drop_table :memberables
  end
end