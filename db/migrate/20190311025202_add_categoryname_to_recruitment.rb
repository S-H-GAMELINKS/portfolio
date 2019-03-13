class AddCategorynameToRecruitment < ActiveRecord::Migration[5.2]
  def change
    add_column :recruitments, :category, :string
  end
end
