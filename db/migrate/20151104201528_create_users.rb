class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, default: '', index: true

      t.timestamps null: false
    end
  end
end
