class RemoveActorsFromFilm < ActiveRecord::Migration
  def change
		remove_column :films, :actors
  end
end
