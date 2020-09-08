class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :name
      t.integer :fan_id
      t.integer :festival_id
    end
  end
end
