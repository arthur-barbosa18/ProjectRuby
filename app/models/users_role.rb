class UsersRole < ApplicationRecord
  acts_as_paranoid
  validates_as_paranoid
  has_paper_trail

  has_and_belongs_to_many :user
  has_and_belongs_to_many :role

  validates_uniqueness_of_without_deleted :role_id, scope: :user_id
end

# == Schema Information
#
# Table name: users_roles
#
#  deleted_at :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  role_id    :bigint(8)
#  user_id    :bigint(8)
#
# Indexes
#
#  index_users_roles_on_deleted_at           (deleted_at)
#  index_users_roles_on_role_id              (role_id)
#  index_users_roles_on_user_id              (user_id)
#  index_users_roles_on_user_id_and_role_id  (user_id,role_id)
#
