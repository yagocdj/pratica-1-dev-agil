class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :contact_type, null: false
      t.string :value, null: false, index: { unique: true, name: "unique_values" }
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
