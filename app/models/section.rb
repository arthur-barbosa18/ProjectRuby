class Section < ApplicationRecord

  acts_as_paranoid
  validates_as_paranoid
  has_paper_trail

  validates :name, presence: true
  validates :description, length: { maximum: 140 }
end