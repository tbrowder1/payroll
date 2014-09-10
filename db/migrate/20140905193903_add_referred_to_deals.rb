class AddReferredToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :referred, :string
  end
end
