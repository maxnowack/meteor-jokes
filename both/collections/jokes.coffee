@Jokes = new Mongo.Collection 'jokes'

@Jokes.attachSchema
  text:
    type: String
    autoform:
      type: 'textarea'
  createdAt:
    type: Date

@Jokes.getRandom = (exclude) ->
  query = {}
  if notIds?
    query =
      _id:
        $nin: exclude

  cursor = Jokes.find query

  count = cursor.count()

  Jokes.find query,
    skip: _.random 0, count - 1
    limit: 1
