class CreateSquadGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :squad_groups do |t|
      t.references :captain, foreign_key: {to_table: :users}
      t.string :name
      t.string :location
      t.integer :max_members
      t.integer :price
      t.references :exercise_types

      t.timestamps
    end
  end
end
