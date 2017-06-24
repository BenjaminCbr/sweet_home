class CountersController < ApplicationController
  def destroy
    RedisModels::Counter.reset
    CounterChannel.broadcast_to('counter', counter_value: RedisModels::Counter.get)
  end
end
