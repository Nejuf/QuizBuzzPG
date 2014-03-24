# For more information see: http://emberjs.com/guides/routing/

QuizBuzz.Router.map ()->
  @route 'index', path: '/'
  @resource 'users', ->
    @route 'create'
    @resource 'user', { path: '/:user_id' }, ->
      @route 'edit'
