class AddColumnQuests < ActiveRecord::Migration[5.2]
  def change
    add_reference :quests, :user, null: false, foreign_key: true
  end
end
