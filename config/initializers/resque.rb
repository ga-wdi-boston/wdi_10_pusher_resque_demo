if ENV["REDISCLOUD_URL"]
  uri = URI.parse(ENV["REDISCLOUD_URL"])
  RedisClient = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
else
  RedisClient = Redis.new(host: 'localhost')
end

Resque.redis = RedisClient
