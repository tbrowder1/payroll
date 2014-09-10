class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :hospital

      t.timestamps
    end
  end
end
