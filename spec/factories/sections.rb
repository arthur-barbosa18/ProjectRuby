# frozen_string_literal: true

FactoryBot.define do
  factory :section do
    description { 'Rua dos boboz, numero zero' }
    name { 'jose candido da silveira' }
  end
end

# == Schema Information
#
# Table name: sections
#
#  id          :bigint(8)        not null, primary key
#  deleted_at  :datetime
#  description :string(140)      not null
#  name        :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_sections_on_deleted_at  (deleted_at)
#
