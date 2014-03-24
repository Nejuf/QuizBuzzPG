class QuizBuzz.UsersRoute extends Ember.Route
  model: ->
    @store.find('user')