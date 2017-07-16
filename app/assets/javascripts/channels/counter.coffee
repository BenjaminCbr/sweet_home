App.cable.subscriptions.create 'CounterChannel',
  received: (data) ->
    console.log data
    $('#counter-value').html(data.counter_value)
    TestCounter.instance.setState(data)

  connected: ->
    console.log('I am subscribed')
