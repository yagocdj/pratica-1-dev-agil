class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :contact_type, null: false
      t.string :contact_value, null: false
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
