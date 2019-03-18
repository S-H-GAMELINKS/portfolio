class RemoveRecruitmentToPhotos < ActiveRecord::Migration[5.2]
  def change
    remove_reference :photos, :recruitment, foregin_key: true
  end
end
