class RemoveReviewFromActivities < ActiveRecord::Migration[7.0]
  def change
    remove_column :activities, :review_id, :integer
  end
end
