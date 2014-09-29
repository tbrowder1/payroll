class AddRejectedToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :rejected, :string
  end
end
