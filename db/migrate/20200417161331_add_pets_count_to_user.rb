class AddPetsCountToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :pets_count, :integer, default: 0, null: false

    User.find_each{|u| User.reset_counters(u.id, :pets_count)}
  end
end
