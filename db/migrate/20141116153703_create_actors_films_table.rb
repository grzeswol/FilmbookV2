class CreateActorsFilmsTable < ActiveRecord::Migration
  def change
    create_table :actors_films, id: false do |t|
			t.integer :actor_id
			t.integer :film_id
    end
  end
end
