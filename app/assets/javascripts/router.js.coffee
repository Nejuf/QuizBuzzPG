# For more information see: http://emberjs.com/guides/routing/

QuizBuzz.Router.map ()->
  @route 'index', path: '/'
  @resource 'users'

QuizBuzz.UsersRoute = Ember.Route.extend
  model: ->
    return this.store.find('user')
