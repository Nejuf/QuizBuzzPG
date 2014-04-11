# For more information see: http://emberjs.com/guides/routing/

QuizBuzz.Router.map ()->
  @route 'index', path: '/'

  @resource('users', ->
    @route 'new'
    @resource('user', { path: '/:user_id' }, ->
      @route 'edit'
    )
  )
