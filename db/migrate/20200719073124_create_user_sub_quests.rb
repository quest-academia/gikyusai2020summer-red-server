class CreateUserSubQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :user_sub_quests do |t|
      t.integer :user_id
      t.integer :subquest_id
      t.timestamps
    end
  end
end
