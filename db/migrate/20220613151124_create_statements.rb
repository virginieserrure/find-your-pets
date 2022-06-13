class CreateStatements < ActiveRecord::Migration[6.1]
  def change
    create_table :statements do |t|
      t.string :address
      t.date :date
      t.references :pet, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
