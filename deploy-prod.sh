echo 'DEPLOYING TO PROD'
now ./client --docker --public --token $NOW_TOKEN
now alias -A ./client/now.json --token $NOW_TOKEN
now ./api --docker --public --token $NOW_TOKEN
now alias -A ./api/now.json --token $NOW_TOKEN
now alias drew-prod.now.sh -r rules.json --token $NOW_TOKEN
# dont need to really rm since they will be frozen and removed automatically
# also causes errors when first push
# now rm drew-client --safe --yes --token $NOW_TOKEN
# now rm drew-api --safe --yes --token $NOW_TOKEN
# this worked -- though you might have to alias one manually first
# or comment out previous travis above
