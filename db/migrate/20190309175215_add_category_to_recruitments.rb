class AddCategoryToRecruitments < ActiveRecord::Migration[5.2]
  def change
    add_reference :recruitments, :category
  end
end
