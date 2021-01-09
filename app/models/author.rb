class Author < ActiveRecord::Base
  has_many :publications
  has_many :books, through: :publications
  validates :f_name, presence: true


  def full_name
    "#{f_name} #{l_name}"
  end
end
