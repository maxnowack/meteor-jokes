# Client and Server Routes

Router.configure
  layoutTemplate: "MasterLayout"
  loadingTemplate: "Loading"
  notFoundTemplate: "NotFound"

Router.route "/",
  name: "home"

Router.route "/random",
  action: ->
    @response.setHeader 'Content-Type', 'application/json'
    joke = Jokes.getRandom().fetch()
    json = EJSON.stringify joke

    @response.end json
  where: 'server'
