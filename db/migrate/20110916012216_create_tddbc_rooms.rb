class CreateTddbcRooms < ActiveRecord::Migration
  def change
    create_table :tddbc_rooms do |t|
      t.text :name
      t.integer :capacity
      t.text :location

      t.timestamps
    end
  end
end
