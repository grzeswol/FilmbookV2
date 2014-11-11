class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
			t.string :name
			t.string :born_year
			t.string :born_place
			t.string :bio

      t.timestamps
    end
  end
end
