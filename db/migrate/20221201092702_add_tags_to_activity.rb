class AddTagsToActivity < ActiveRecord::Migration[7.0]
  def change
    change_column :activities, :tag, :text, array: true, default: [], using: "(string_to_array(tag, ','))"
  end
end
