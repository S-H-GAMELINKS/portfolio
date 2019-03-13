class AddImagedataToRecruitment < ActiveRecord::Migration[5.2]
  def change
    add_column :recruitments, :image_data, :text
  end
end
