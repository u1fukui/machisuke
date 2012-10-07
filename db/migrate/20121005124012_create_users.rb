class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :map_key
      t.string :name
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end
end
