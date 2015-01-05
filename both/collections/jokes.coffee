@Jokes = new Mongo.Collection 'jokes'

@Jokes.attachSchema
  text:
    type: String
    autoform:
      type: 'textarea'
  createdAt:
    type: Date
