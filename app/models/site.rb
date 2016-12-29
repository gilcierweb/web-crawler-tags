class Site < ApplicationRecord
  has_many :tag, dependent: :destroy

  validates :url, presence: true, length: { minimum: 6 }
  validates :url, uniqueness: true
  validates :url, format: { with: URI.regexp }, allow_blank: true

end
