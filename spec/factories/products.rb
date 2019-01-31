# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    name { 'Bolo de chocolate' }
  end
end

# == Schema Information
#
# Table name: products
#
#  id             :bigint(8)        not null, primary key
#  brand          :string(255)
#  deleted_at     :datetime
#  name           :string(255)      not null
#  price          :decimal(10, 2)   default(0.0)
#  price_per_kilo :decimal(10, )    default(0)
#  uuid           :string(36)       not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  section_id     :bigint(8)
#
# Indexes
#
#  index_products_on_deleted_at  (deleted_at)
#  index_products_on_section_id  (section_id)
#
# Foreign Keys
#
#  fk_rails_...  (section_id => sections.id)
#
