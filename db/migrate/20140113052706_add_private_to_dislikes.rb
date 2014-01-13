class AddPrivateToDislikes < ActiveRecord::Migration
  def change
    add_column :dislikes, :private, :boolean, default: false
  end
end
