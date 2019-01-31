class CreateChangementDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :changement_doctors do |t|
      remove_column :doctors, :specialty, :string
      add_reference :doctors, :city, foreign_key: true
      add_reference :patients, :city, foreign_key: true
      add_reference :appointments, :city, foreign_key: true
      t.timestamps
    end
  end
end
