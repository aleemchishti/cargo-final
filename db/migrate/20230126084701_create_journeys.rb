class CreateJourneys < ActiveRecord::Migration[6.1]
  def change
    create_table :journeys do |t|
      t.string :from
      t.string :to
      t.datetime :departure
      t.integer :rate
      t.integer :weight_capacity

      t.timestamps
    end
  end
end
