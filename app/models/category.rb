class Category < ActiveRecord::Base
  has_many :categories
  #friendly_id
  extend FriendlyId
  friendly_id :name, use: :slugged
end
