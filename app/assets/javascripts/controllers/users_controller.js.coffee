class QuizBuzz.UsersController extends Ember.ArrayController
  sortProperties: ['name']
  sortAscending: true

  usersCount: (()->
    this.get('model.length')
    ).property('@each')