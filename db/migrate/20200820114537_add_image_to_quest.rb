class AddImageToQuest < ActiveRecord::Migration[5.2]
  def change
    add_column :quests, :image, :string
  end
end
