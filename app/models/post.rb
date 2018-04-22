class Post < ActiveRecord::Base
  belongs_to :city
  belongs_to :area
  belongs_to :user
  has_many :comments
end
