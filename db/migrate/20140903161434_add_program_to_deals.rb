class AddProgramToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :program, :string
  end
end
