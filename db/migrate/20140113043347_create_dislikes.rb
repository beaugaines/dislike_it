class CreateDislikes < ActiveRecord::Migration
  def change
    create_table :dislikes do |t|
      t.string :name
      t.text :body
      t.string :category
      t.integer :degree
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
