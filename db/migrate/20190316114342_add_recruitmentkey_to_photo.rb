class AddRecruitmentkeyToPhoto < ActiveRecord::Migration[5.2]
  def change
    add_reference :photos, :recruitment, foregin_key: true
  end
end
