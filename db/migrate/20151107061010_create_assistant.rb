class CreateAssistant < ActiveRecord::Migration
  def change
    create_table :assistants do |t|
      t.string :name, null: false
      t.string :time_zone, default: "UTC"
      t.string :email, null: false
      t.references :event, null: false
      t.timestamps null: false
    end
  end
end
