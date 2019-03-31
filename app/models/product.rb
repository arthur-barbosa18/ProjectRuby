class Product < ApplicationRecord
  acts_as_paranoid
  validates_as_paranoid
  has_paper_trail

  belongs_to :section
  has_many :demanded_products

  validates :uuid, length: { maximum: 36 }
  validates :name, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :price_per_kilo, numericality: { greater_than_or_equal_to: 0 }

  after_initialize :generate_uuid

  scope :by_id, ->(id) { where(id: id) }
  scope :by_section, ->(section_id) { where(section_id: section_id) }

  private

  def generate_uuid
    self.uuid ||= SecureRandom.uuid
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
