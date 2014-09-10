class AddProjstartToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :projstart, :string
  end
end
