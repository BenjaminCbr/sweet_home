module RedisModels
  class Counter
    def self.increment
      $redis.incr(namespace)
    end

    def self.get
      $redis.get(namespace)
    end

    def self.reset
      $redis.del(namespace)
    end

    def self.namespace
      'test_counter'
    end
  end
end
