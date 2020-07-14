class Quest < ApplicationRecord
  has_many :sub_quests, dependent: :destroy
  validates :title, presence: true
end
