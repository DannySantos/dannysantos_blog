class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :comment, optional: true
  has_many :comments, dependent: :destroy
end
