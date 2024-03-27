# models/category.rb
class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '減塩' },
    { id: 3, name: '減糖' },
    { id: 4, name: '高タンパク質' },
    { id: 5, name: '肥満対策' },
    { id: 6, name: '血圧対策' },
    { id: 7, name: '風邪対策' },
    { id: 8, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :posts

end