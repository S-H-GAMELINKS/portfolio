class CreateIconUploaders < ActiveRecord::Migration[5.2]
  def change
    create_table :icon_uploaders do |t|

      t.timestamps
    end
  end
end
