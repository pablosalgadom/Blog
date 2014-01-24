class Post < ActiveRecord::Base
  belongs_to :category

  validates :title, 	  presence: true
  validates	:content, 	  presence: true
  validates	:category_id, presence: true
  mount_uploader :post_image, PostImageUploader
end
