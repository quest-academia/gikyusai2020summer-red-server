class CreateQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :quests do |t|
      t.string :title, null: false
      t.string :award
      t.timestamps
    end
  end
end
