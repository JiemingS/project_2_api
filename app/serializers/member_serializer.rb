# frozen_string_literal: true

class MemberSerializer < ActiveModel::Serializer
  attributes :id
  has_one :team
  has_one :hero
end
