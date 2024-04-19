class CreatePatientRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :patient_records do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.text :issue

      t.timestamps
    end
  end
end
