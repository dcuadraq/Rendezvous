class AddColumnEventIdToAssistant < ActiveRecord::Migration
  def change
    add_reference :assistants, :event, index: true
  end
end
