class AddContactToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :contact, :integer
  end
end
