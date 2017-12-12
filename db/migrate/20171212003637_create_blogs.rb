class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :tite
      t.string :author
      t.string :subjet
      t.string :body
      t.text :image

      t.timestamps
    end
  end
end
