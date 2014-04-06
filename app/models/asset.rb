class Asset < ActiveRecord::Base
  belongs_to :project
  has_attached_file :image, 
    :styles => { 
      :medium => "636x364>", 
      :thumb => "100x100>" 
    }, 
    :default_url => "/images/:style/missing.png",
    :storage => :s3, 
    :s3_credentials => S3_CREDENTIALS


  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
