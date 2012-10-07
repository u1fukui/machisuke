class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :key
      t.timestamps
    end
  end
end
