class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :tourist_id
      t.integer :country_id

      t.timestamps
    end
  end
end
