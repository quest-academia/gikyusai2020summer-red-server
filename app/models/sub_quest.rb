class SubQuest < ApplicationRecord
  belongs_to :quest
  validates :title, presence: true
  has_many :user_sub_quests, dependent: :destroy
  has_many :completed_users, through: :user_sub_quests, source: :users
end
