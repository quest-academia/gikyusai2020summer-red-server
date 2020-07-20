class UserSubQuest < ApplicationRecord
  belongs_to :user
  belongs_to :sub_quest
end
