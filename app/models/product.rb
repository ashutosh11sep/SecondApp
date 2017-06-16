class Product < ApplicationRecord
  mount_uploader :images, AvatarUploader
acts_as_commentable
belongs_to :user
belongs_to :category

end
