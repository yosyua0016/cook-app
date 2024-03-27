class Post < ApplicationRecord
  class Post < ApplicationRecord
    belongs_to :user
    belongs_to :category_id
    has_one_attached :image
  end

  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
end
