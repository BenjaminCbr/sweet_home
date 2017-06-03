App.cable.subscriptions.create 'CounterChannel',
  received: (data) ->
    console.log("Hurray")
    console.log data
    $('#counter-value').html(data.counter_value)

  connected: ->
    console.log('I am subscribed')
