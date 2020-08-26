class Quest < ApplicationRecord
  belongs_to :user
  has_many :sub_quests, dependent: :destroy
  validates :title, presence: true
  has_many :user_quests, dependent: :destroy
  has_many :completed_users, through: :user_quests, source: :user
  mount_uploader :image, ImageUploader
end
