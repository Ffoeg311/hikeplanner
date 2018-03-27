class CreateHikes < ActiveRecord::Migration[5.0]
  def change
    create_table :hikes do |t|
      t.string :link
      t.string :description
      t.integer :commute_hours
      t.string :title
      t.string :location
      t.string :nearest_town
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
