class Quest < ApplicationRecord
  has_many :sub_quests
  validates :title, presence: true
end
