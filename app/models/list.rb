class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  validates :name, length: { minimum: 6 }
end
