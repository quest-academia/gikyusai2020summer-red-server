json.extract! @quest, :id, :title, :award
json.sub_quest_count @quest.sub_quests.count
json.subquests do
 json.array!(@quest.sub_quests) do |sq|
   json.id sq.id
   json.chapter sq.chapter
   json.title sq.title
  end
end   