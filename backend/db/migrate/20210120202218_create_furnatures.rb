class CreateFurnatures < ActiveRecord::Migration[6.1]
  def change
    create_table :furnatures do |t|
      t.string :name

      t.timestamps
    end
  end
end
