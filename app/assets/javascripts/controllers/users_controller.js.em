class QuizBuzz.UsersController extends Ember.ArrayController
  sortProperties: ['name']
  sortAscending: true

  usersCount: ~>
    @get('model.length')