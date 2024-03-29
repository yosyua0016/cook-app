class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :comment, presence: true, length: { minimum: 1 }
    validates :category_id
    validates :title
  end

  with_options numericality: { other_than: 1 } do
    validates :category_id
  end

  def image_presence
    errors.add(:image, 'を選択してください') unless image.attached?
  end
end
