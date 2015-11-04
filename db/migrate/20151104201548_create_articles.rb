class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name, default: '', index: true
      t.text :text, default: '', index: true

      t.timestamps null: false
    end
  end
end
