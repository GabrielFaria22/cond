class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.integer :age, null: false
      t.string :phone_number

      t.timestamps
    end
  end
end
