Meteor.publish 'jokes', (viewedIds) ->
  Jokes.getRandom viewedIds
