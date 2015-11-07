class CreateEvent < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :descripion
      t.string :duration
      t.string :password, null: false
      t.timestamps null: false
    end
  end
end
