class TestJob < ApplicationJob
  queue_as :default

  def perform
    result = RedisModels::Counter.increment
    CounterChannel.broadcast_to('counter', message: "Hello World", counter_value: result)
  end
end
