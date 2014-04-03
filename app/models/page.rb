class Page < ActiveRecord::Base
  #paperclip
  has_attached_file :image, :styles => { :medium => "750x420>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  #friendly_id
  extend FriendlyId
  friendly_id :name, use: :slugged

end
