import json
import requests
import sys

subreddit = sys.argv[1]

headers = {'User-Agent': 'scout/0.0.1'}
res = requests.get(f'https://www.reddit.com/r/{subreddit}/top.json?t=day&limit=1', headers=headers)
res = res.json()

title = res['data']['children'][0]['data']['title']
selftext = res['data']['children'][0]['data']['selftext']
url = res['data']['children'][0]['data']['url']

print(f'{title}\n')
print(f'{selftext}\n')
print(f'{url}\n')