class CreateSubQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_quests do |t|
      t.string :chapter
      t.string :title, null: false
      t.integer :point
      t.references :quest, null: false, foreign_key: true
      t.text :content
      t.string :image
      t.timestamps
    end
  end
end
