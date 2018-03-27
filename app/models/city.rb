class City < ActiveRecord::Base

  has_many :posts
  has_many :areas
end
