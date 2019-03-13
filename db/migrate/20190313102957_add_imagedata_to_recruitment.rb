class AddImagedataToRecruitment < ActiveRecord::Migration[5.2]
  def change
    add_column :recruitments, :image_data, :string
  end
end
