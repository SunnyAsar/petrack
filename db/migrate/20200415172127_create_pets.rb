class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets, id: :uuid do |t|
      t.string :name, null: false
      t.string :age
      t.string :location
      t.text :details
      t.references :category, type: :uuid, null: false, foreign_key: true
      t.references :user, type: :uuid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
