class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :key, :null => false
      t.timestamps
    end
  end
end
