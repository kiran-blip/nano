class AddActivityToReviews < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :activity, null: false, foreign_key: true
  end
end
