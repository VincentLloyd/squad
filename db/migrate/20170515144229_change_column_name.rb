class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :profiles, :date_of_birth, :birth_date
  end
end
