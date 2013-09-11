class Category < ActiveRecord::Base
  VALID_CATEGORIES = [
    'space',
    'starships',
    'warp drive technical specs',
    'vulcan studies',
    "damit jim, i'm a doctor, not a..."
  ]

  belongs_to :post

  validates_presence_of :post
  validates_presence_of :name

  validates_inclusion_of :name,
    in: VALID_CATEGORIES
end
