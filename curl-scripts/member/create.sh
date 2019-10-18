
curl "http://localhost:4741/members" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "member": {
      "team_id": "'"${TEAMID}"'",
      "hero_id": "'"${HEROID}"'"
    }
  }'

echo
