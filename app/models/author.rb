class Author < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :password

  validates :phone, numericality: true, length: { is: 10 }

  # email regex validation from: http://stackoverflow.com/a/1189163
  validates_format_of :email,
    with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/

  validates :password, length: { in: 6..12 }
end
