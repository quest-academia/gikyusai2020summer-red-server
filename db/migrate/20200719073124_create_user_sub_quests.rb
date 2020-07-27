class CreateUserSubQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :user_sub_quests do |t|
      t.references :user, null: false, foreign_key: true
      t.references :sub_quest, null: false, foreign_key: true
      t.timestamps
    end
  end
end
