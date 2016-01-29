class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.string :song_id
    end
  end
end
