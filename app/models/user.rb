class User < ApplicationRecord
  has_many :quests, dependent: :destroy
  has_many :user_sub_quests, dependent: :destroy
  has_many :completed_sub_quests, through: :user_sub_quests, source: :sub_quest
  has_many :user_quests, dependent: :destroy
  has_many :completed_quests, through: :user_quests, source: :quest
  before_save { self.email = email.downcase }
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true

  validates :password, presence: true, length: { minimum: 6 }
end

