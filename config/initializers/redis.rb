$redis = Redis.new

url = ENV["REDISCLOUD_URL"]

if url
  $redis = Redis.new(:url => url)
end
