class Post < ActiveRecord::Base
  belongs_to :author

  has_many :categories,
    dependent: :destroy,
    inverse_of: :post

  has_many :comments,
    dependent: :destroy,
    inverse_of: :post

  validates_presence_of :author
  validates_presence_of :title
  validates_presence_of :content
end
