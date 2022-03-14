class Micropost < ApplicationRecord
  # 関係
  belongs_to :user

  # バリデーション
  validates :content, length: {maximum: 140}, presence: true
end
