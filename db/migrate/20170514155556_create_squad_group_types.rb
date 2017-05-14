class CreateSquadGroupTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :squad_group_types do |t|
      t.references :squadgroup, foreign_key: true
      t.references :exercise_type, foreign_key: true

      t.timestamps
    end
  end
end
