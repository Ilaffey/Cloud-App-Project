class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :contactNumber
      t.date :dob
      t.string :condition
      t.string :Doctor
      t.string :currentRoom
      t.datetime :patientEntryDate
      t.datetime :patientDepartureDate
      t.timestamp :RecordlastUpdated

      t.timestamps
    end
  end
end
