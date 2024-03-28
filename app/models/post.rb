class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :category
  has_one_attached :image  # 画像の添付

  with_options presence: true do
    validates :image
    # 修正: ハッシュの記法を修正
    validates :comment, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999, only_integer: true }
    validates :category_id
    validates :title
  end

  # 修正: with_optionsを用いてカテゴリIDのバリデーションを追加
  with_options numericality: { other_than: 1 } do
    validates :category_id
  end

  # 修正: メソッド名を修正
  def image_presence
    errors.add(:image, "を選択してください") unless image.attached?
  end
end
