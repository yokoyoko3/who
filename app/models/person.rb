class Person < ApplicationRecord
  has_many :characters, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :characters
  validates :name, :age, :gender, :height, :body, :hair, presence: true
  enum genders: {
    男性:1, 女性:2, その他:3
  }
  enum ages: {
   " ~20歳":1, "20~25歳":2, "25~30歳":3, "30~35歳":4, "35~40歳":5, "40~45歳":6, "45~50歳":7, "50~55歳":8, "55~60歳":9, "60歳~":10
  }
  enum heights: {
    "180cm~":1, "175~180cm":2, "170~175cm":3, "165~170cm":4, "160~165cm":5, "155~160cm":6, "~155cm":7
  }
  enum bodys: {
    筋肉質:1, 細身:2, 普通:3, ふくよか:4
  }
  enum hairs: {
    坊主:1, ベリーショート:2, ショート:3, セミロング:4, ロング:5, パーマ:6
  }
end

