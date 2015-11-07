class CreateTimeRange < ActiveRecord::Migration
  def change
    create_table :time_ranges do |t|
      t.datetime :initial_time
      t.datetime :end_time
      t.references :availability, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
