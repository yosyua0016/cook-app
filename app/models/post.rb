class Post < ApplicationRecord
  class Post < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_one_attached :image
  end
end
