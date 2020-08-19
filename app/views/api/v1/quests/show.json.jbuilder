json.extract! @quest, :id, :title, :award
                      # , :clear_rate, :created_at, :updated_at
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
