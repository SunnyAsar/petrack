class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :location
      t.string :phone
      t.string :password_digest
      t.boolean :active, default: true
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
