class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #acts_as_paranoid
  #validates_as_paranoid
  #has_paper_trail

  rolify

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  

 def add_role(role)
   errors.add(:roles, :already_role) if roles.include? role
   raise(ActiveRecord::RecordInvalid, self) if errors.any?
   roles << role
 end
  
#  def initialize()

#  def add_role(role)
#    @roles << role
#  end
end

# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  deleted_at             :datetime
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_deleted_at            (deleted_at)
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
