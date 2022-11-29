class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.string :tag
      t.integer :price
      t.string :image
      t.datetime :start
      t.datetime :end
      t.string :location
      t.boolean :free
      t.string :venue
      t.boolean :booking
      t.references :review, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
