@HomeController = RouteController.extend(
  waitOn: ->
    Meteor.subscribe 'jokes', Session.get('viewedJokes')
  data: ->
    Jokes.findOne()  
  action: ->
    @render()
    return
)
