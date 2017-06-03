class CounterChannel < ApplicationCable::Channel

  def subscribed
    puts "User successfully connected to the CounterChannel @ #{Time.current}"
    stream_for 'counter'
  end
end
