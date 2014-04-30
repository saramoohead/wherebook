class AddApproximate < ActiveRecord::Migration
  def change

  	add_column :places, :approximate, :boolean

  end
end
