Meteor.publish 'jokes', (viewedIds) ->
  cursor = Jokes.find
    _id:
      $nin: viewedIds

  count = cursor.count()

  Jokes.find
    _id:
      $nin: viewedIds
  ,
    skip: _.random(0, count)
    limit: 1
