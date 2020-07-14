class SubQuest < ApplicationRecord
  belongs_to :quest, dependent: :destroy
  validates :title, presence: true
end
