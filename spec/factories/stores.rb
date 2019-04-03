FactoryBot.define do
  factory :store do
    address { 'Rua dos boboz, numero zero' }
    name { 'Loja 1' }
  end
end

# == Schema Information
#
# Table name: stores
#
#  id         :bigint(8)        not null, primary key
#  address    :string(255)      not null
#  deleted_at :datetime
#  name       :string(40)       not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_stores_on_deleted_at  (deleted_at)
#
