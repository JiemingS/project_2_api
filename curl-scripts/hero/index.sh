
curl "http://localhost:4741/heros" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
