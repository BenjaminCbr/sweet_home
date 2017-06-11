@TestCounter = class TestCounter extends React.Component
  @INSTANCE: null

  constructor: (props) ->
    super(props)
    @state = props
    @.constructor.INSTANCE = @


  render: ->
    React.DOM.span null, @state.counter_value
