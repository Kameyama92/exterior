class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :b_title
      t.text :b_text
      t
      t.timestamps
    end
  end
end
