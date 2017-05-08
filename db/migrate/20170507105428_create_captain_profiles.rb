class CreateCaptainProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :captain_profiles do |t|
      t.references :user, foreign_key: true
      t.text :bio, :null => false
      t.string :contact_phone, :null => false
      t.string :contact_email, :null => false

      t.timestamps
    end
    add_index :captain_profiles, [:contact_phone, :contact_email], unique: true
  end
end
