json.data do
  json.extract! @quest, :id, :title, :award
  json.sub_quest_count @quest.sub_quests.count
  json.clear_rate @current_user.completed_sub_quests.where(quest_id: @quest.id).count.to_f/@quest.sub_quests.count
  json.extract! @quest, :created_at, :updated_at
  json.subquests do
  	json.array!(@quest.sub_quests) do |sq|
  		json.id sq.id
      json.chapter sq.chapter
      json.title sq.title
      json.point sq.point
      json.content sq.content
      json.image sq.image
      json.created_at sq.created_at
      json.updated_at sq.updated_at
  	end
  end
end
json.success true
