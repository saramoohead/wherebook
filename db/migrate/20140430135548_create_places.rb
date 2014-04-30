class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|

		# Adding in the fields
		t.string :booktitle
		t.string :address
		t.string :description
		t.float :latitude
		t.float :longitude

      t.timestamps
    end
  end
end
