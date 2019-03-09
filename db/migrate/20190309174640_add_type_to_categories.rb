class AddTypeToCategories < ActiveRecord::Migration[5.2]
  def up
    Category.create(name: "Vo募集")
    Category.create(name: "Player募集")
    Category.create(name: "Engineer募集")
    Category.create(name: "Illustration募集")
    Category.create(name: "Movie募集")
  end

  def down
    Category.delete_all
  end
end
