class SubQuest < ApplicationRecord
  belongs_to :quest, optional: true
end
