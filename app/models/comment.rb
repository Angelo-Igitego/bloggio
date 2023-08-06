class Comment < ApplicationRecord
  belongs_to :post, inverse_of: :comments
  validates_presence_of :content
  broadcasts_to :post
end
