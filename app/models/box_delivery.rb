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

  def self.blablas(boxs)
    #res = boxs.sort_by {|item| item[:store_id]}
    


    lista = []
    stores = Store.all
    puts stores
    count = 0
    stores.each do |store|
      boxs.each do |box|
        if(box.store_id == store.id)
          lista[count] << box.inspect
        end
      end
      count = count + 1
    end
    puts lista
    lista
  end

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
