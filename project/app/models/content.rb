class Content < ActiveRecord::Base

  validates :title, presence: true
  validates :title, length: { is: 6 }
  validates :title, uniqueness: true

end
