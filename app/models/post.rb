class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :category
  has_one_attached :image  # 画像の添付

  validates :title, presence: true
  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"}
  validate :image_presence  # 画像が添付されているかを検証

  def image_presence
    errors.add(:image, "を選択してください") unless image.attached?
  end
end
