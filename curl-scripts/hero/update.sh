
curl "http://localhost:4741/heros/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "hero": {
      "hero_id": "'"${HERO_ID}"'",
      "name": "'"${NAME}"'",
      "damage_type": "'"${DAMAGE_TYPE}"'",
      "damage": "'"${DAMAGE}"'",
      "toughness": "'"${TOUGHNESS}"'",
      "crowd_control": "'"${CROWD_CONTROL}"'",
      "mobility": "'"${MOBILITY}"'",
      "attack_range": "'"${ATTACK_RANGE}"'",
      "icon": "'"${ICON}"'"
    }
  }'

  echo
