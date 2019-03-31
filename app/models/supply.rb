class Supply < ApplicationRecord
  acts_as_paranoid
  validates_as_paranoid
  has_paper_trail

  validates :demanded_initial, presence: true
  validates :demanded_amount, presence: true
  validates :demanded_amount, numericality: { greater_than_or_equal_to: 0 }

  before_update :fix_demanded_amount
  #before_create :define_demanded_amount

  private

  def fix_demanded_amount
    amount = demanded_amount - supplied_amount
    self.demanded_amount = amount if amount > 0
    self.demanded_amount = 0 if amount < 0
  end

end

# == Schema Information
#
# Table name: supplies
#
#  id               :bigint(8)        not null, primary key
#  deleted_at       :datetime
#  demanded_amount  :integer          not null
#  demanded_initial :integer          not null
#  supplied_amount  :integer          default(0)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_supplies_on_deleted_at  (deleted_at)
#
