class Comment < ApplicationRecord
  has_ancestry
  
  belongs_to :user
  belongs_to :recipe
end
