class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :map_id, :null => false
      t.string :name
      t.float :lat, :null => false
      t.float :lon, :null => false

      t.timestamps
    end
  end
end
