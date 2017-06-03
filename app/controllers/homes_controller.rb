class HomesController < ApplicationController
  def show
    @counter_value = RedisModels::Counter.get
  end
end
