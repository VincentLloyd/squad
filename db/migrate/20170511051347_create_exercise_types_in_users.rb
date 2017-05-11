class CreateExerciseTypesInUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :exercise_types_in_users do |t|
      t.references :user, foreign_key: true
      t.references :exercise_type, foreign_key: true
      t.boolean :offered

      t.timestamps
    end
  end
end
