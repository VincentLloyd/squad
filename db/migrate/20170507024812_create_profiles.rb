class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :username, :null => false
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.date :date_of_birth, :null => false
      t.string :gender
      t.string :avatar_src

      t.timestamps
    end
    add_index :profiles, :username, unique: true
  end
end
