class SuppliedProduct < ApplicationRecord

  acts_as_paranoid
  validates_as_paranoid
  has_paper_trail

  belongs_to :products

  validates :amount, presence: true

end
