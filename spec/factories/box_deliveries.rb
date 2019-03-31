

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
