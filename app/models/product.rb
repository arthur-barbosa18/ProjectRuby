class Product < ApplicationRecord
  
  acts_as_paranoid
  validates_as_paranoid
  has_paper_trail

  belongs_to :sections

  validates :uuid, length: { maximum: 36 }
  validates :name, presence: true
  validates :description, length: { maximum: 140 }

  after_initialize :generate_uuid

  def generate_uuid
    self.uuid ||= SecureRandom.uuid
  end
end
