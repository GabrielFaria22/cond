class AddApartmentToPeople < ActiveRecord::Migration[7.0]
  def change
    change_table :people do |t|
      t.belongs_to :apartment
    end
  end
end
