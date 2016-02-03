class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.references :user, index: true, foreign_key: true
      t.text :name
      t.text :description

      t.timestamps
    end
  end
end
