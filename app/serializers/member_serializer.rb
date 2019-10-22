# frozen_string_literal: true

class MemberSerializer < ActiveModel::Serializer
  attributes :id, :user_id
  has_one :team
  has_one :hero
end
