server="www.example.com"
httperf --hog --server $server --uri="/" --num-conn 30 --ra 3 --timeout 300 | ruby -e 'require "httperf/parser"; require "json"; puts HTTPerf::Parser.parse(ARGF.read).to_json' > example.json
