class Quest < ApplicationRecord
  belongs_to :user
  has_many :sub_quests, dependent: :destroy
  validates :title, presence: true
end
