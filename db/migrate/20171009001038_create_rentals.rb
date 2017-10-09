class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.references :user, foreign_key: true
      t.references :video, foreign_key: true
      t.string :charge_identifier

      t.timestamps
    end
  end
end
