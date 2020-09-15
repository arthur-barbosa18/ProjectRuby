class Role < ApplicationRecord

  acts_as_paranoid
  validates_as_paranoid
  has_paper_trail
  
  has_and_belongs_to_many :users, :join_table => :users_roles
  
  belongs_to :resource,
             :polymorphic => true,
             :optional => true
  

  validates :resource_type,
            :name, presence: true, uniqueness: true,
            #:inclusion => { :in => Rolify.resource_types },
            :allow_nil => true

  scopify
end

# == Schema Information
#
# Table name: roles
#
#  id            :bigint(8)        not null, primary key
#  deleted_at    :datetime
#  name          :string(255)
#  resource_type :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  resource_id   :bigint(8)
#
# Indexes
#
#  index_roles_on_deleted_at                              (deleted_at)
#  index_roles_on_name                                    (name)
#  index_roles_on_name_and_resource_type_and_resource_id  (name,resource_type,resource_id)
#  index_roles_on_resource_type_and_resource_id           (resource_type,resource_id)
#
