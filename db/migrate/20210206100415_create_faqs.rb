class CreateFaqs < ActiveRecord::Migration[6.0]
  def change
    create_table :faqs do |t|
      t.string :f_title
      t.text :f_text
      t.references :user,           foreign_key: true
      t.timestamps
    end
  end
end
