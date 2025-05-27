class AddMovieIdToActors < ActiveRecord::Migration[8.0]
  def change
    add_column :actors, :movie_id, :integer
  end
end
