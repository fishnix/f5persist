class CreateF5PersistRecords < ActiveRecord::Migration
  def change
    create_table :f5_persist_records do |t|
      t.integer :f5_persist_list_id
      t.integer :tmm
      t.string :mode
      t.text :value
      t.integer :age
      t.text :virtual_name
      t.string :virtual_addr
      t.string :node_addr
      t.text :pool_name
      t.string :client_addr

      t.timestamps
    end
  end
end
