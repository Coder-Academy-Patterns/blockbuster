class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :title
      t.integer :year_released
      t.text :description
      t.string :classification
      t.string :genre

      t.timestamps
    end
  end
end
