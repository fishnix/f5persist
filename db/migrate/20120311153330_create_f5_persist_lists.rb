class CreateF5PersistLists < ActiveRecord::Migration
  def change
    create_table :f5_persist_lists do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
