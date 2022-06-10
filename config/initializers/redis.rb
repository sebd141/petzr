$redis = Redis.new

url = ENV["REDIS_URL"]

if url
  $redis = Redis.new(:url => url)
end
