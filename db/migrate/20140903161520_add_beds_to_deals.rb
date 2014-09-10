class AddBedsToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :beds, :integer
  end
end
