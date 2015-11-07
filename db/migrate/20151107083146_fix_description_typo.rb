class FixDescriptionTypo < ActiveRecord::Migration
  def change
    rename_column :events, :descripion, :description
  end
end
