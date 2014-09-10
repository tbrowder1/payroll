class AddActivityToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :activity, :string
  end
end
