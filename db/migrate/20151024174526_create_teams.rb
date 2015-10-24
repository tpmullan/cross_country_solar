class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.date :year
      t.integer :number
      t.string :school

      t.timestamps null: false
    end
  end
end
