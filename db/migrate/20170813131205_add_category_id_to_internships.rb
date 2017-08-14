class AddCategoryIdToInternships < ActiveRecord::Migration[5.1]
  def change
    add_column :internships, :category_id, :integer
  end
end
