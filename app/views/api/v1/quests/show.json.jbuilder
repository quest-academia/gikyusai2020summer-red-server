json.data do
  json.extract! @quest, :id, :title, :award
  json.clear_rate @current_user.completed_sub_quests.where(quest_id: @quest.id).count.to_f/@quest.sub_quests.count
  json.extract! @quest, :created_at, :updated_at
end
json.success true
#
#
# json.clear_rate do
#   current_user.subq_quest.where(id: @quest.id)
#   /@quest.subq_quest.count
# end
