# Home: Event Handlers and Helpers
Template.Home.events
  "click .next": (event) ->
    ids = Session.get 'viewedJokes'
    ids.push @_id
    Session.set 'viewedJokes', ids

Template.Home.helpers
# Example:
#   items: ->
#

# Home: Lifecycle Hooks
Template.Home.created = ->

Template.Home.rendered = ->

Template.Home.destroyed = ->

AutoForm.hooks
  insertNewJoke:
    before:
      insert: (joke, template) ->
        joke.createdAt = new Date()
        joke
