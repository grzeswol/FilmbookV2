class ChangeDateFormatInActors < ActiveRecord::Migration
  def change
		change_column :actors, :born_year, :datetime
  end
end
