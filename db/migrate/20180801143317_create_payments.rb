class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.string :card_number
      t.datetime :expiration_date
      t.integer :cvv
      t.datetime :payment_date
      t.integer :amount

      t.timestamps
    end
  end
end
