# frozen_string_literal: true

class HeroSerializer < ActiveModel::Serializer
  attributes :id, :hero_id, :name, :damage_type, :damage, :toughness, :crowd_control, :mobility, :attack_range
end
