class CreateManagers < ActiveRecord::Migration[7.0]
  def change
    create_table :managers do |t|
      t.string :name, null: false
      t.date :birth_date, null: false
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
