class BoxDelivery < ApplicationRecord
  acts_as_paranoid
  validates_as_paranoid
  has_paper_trail

  extend Enumerize

  WHITE = 1
  BLACK = 2

  enumerize :color, in: {
    white: WHITE,
    black: BLACK
  }, scope: :by_color

  belongs_to :store

  validates :amount, :color, presence: true

  def generate_input_to_route(boxs)
    res = boxs.sort_by {|item| item[:store_id]}
    puts res.inspect
  end
    #boxs_white = boxs.count(color.white)
   ## boxs_black = boxs.count(color.black)
    #string_white = '#{boxs_white},#{color.white}'

  #end
end

# == Schema Information
#
# Table name: box_deliveries
#
#  id         :bigint(8)        not null, primary key
#  amount     :integer          not null
#  color      :integer          not null
#  deleted_at :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  store_id   :bigint(8)        not null
#
# Indexes
#
#  index_box_deliveries_on_deleted_at  (deleted_at)
#  index_box_deliveries_on_store_id    (store_id)
#
# Foreign Keys
#
#  fk_rails_...  (store_id => stores.id)
#
