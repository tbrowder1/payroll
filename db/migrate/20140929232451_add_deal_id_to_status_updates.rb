class AddDealIdToStatusUpdates < ActiveRecord::Migration
  def change
    add_column :status_updates, :deal_id, :int
  end
end
