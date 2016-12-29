class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.references :user, foreign_key: true
      t.references :country, foreign_key: true
      t.string :name
      t.date :date
      t.string :city

      t.timestamps
    end
  end
end
