ActiveRecord::Schema.define(version: 2020_07_10_034853) do

  create_table "quests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title", null: false
    t.string "award"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_quests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "chapter"
    t.string "title", null: false
    t.integer "point"
    t.bigint "quest_id", null: false
    t.text "content"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quest_id"], name: "index_sub_quests_on_quest_id"
  end

  add_foreign_key "sub_quests", "quests"
end
