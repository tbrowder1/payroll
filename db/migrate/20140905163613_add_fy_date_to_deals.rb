class AddFyDateToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :fydate, :string
  end
end
