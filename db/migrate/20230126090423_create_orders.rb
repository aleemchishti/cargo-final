class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :sender_name
      t.string :receiver_name
      t.integer :weight_capacity
      t.string :from
      t.string :to

      t.timestamps
    end
  end
end
