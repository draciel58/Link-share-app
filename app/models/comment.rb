class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :link
  has_many :likes
end
