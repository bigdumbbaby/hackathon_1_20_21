class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :age
      t.string :moving_date

      t.timestamps
    end
  end
end
