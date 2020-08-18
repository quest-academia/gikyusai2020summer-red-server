json.extract! @quest, :id, :title, :award
json.subquests do
	json.array!(@quest.sub_quests) do |sq|
		json.id sq.id
		json.chapter sq.chapter
		json.title sq.title
	end
end
