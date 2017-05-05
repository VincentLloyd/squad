class AddColumnsToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :user_id, :integer
    add_column :profiles, :first_name, :string
    add_column :profiles, :last_name, :string
    add_column :profiles, :username, :string
    add_index :profiles, :username, unique: true
    add_column :profiles, :avatar, :string
    add_column :profiles, :dob, :date
  end
end
