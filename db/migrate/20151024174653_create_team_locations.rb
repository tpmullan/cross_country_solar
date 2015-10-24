class CreateTeamLocations < ActiveRecord::Migration
  def change
    create_table :team_locations do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
