class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :number
      t.boolean :availability

      t.timestamps
    end
  end
end
