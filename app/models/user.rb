class User < ApplicationRecord
  # 関係
  has_many :microposts

  # バリデーション
  validates :name, presence: true
  validates :email, presence: true
end
