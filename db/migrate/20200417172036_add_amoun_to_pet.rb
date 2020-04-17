class AddAmounToPet < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :amount, :decimal, default: 0
    add_column :pets, :quantity, :integer, default: 1, null: true
  end
end
