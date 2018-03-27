class Post < ActiveRecord::Base

  belongs_to :city
  belongs_to :area
end
