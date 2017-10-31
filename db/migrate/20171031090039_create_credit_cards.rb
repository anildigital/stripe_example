class CreateCreditCards < ActiveRecord::Migration[5.1]
  def change
    create_table :credit_cards do |t|
      t.numeric :number
      t.numeric :cvc
      t.numeric :digits
      t.numeric :month
      t.numeric :year

      t.timestamps
    end
  end
end
