QuizBuzz.User = DS.Model.extend
  name: DS.attr('string')
  email: DS.attr('string')
  is_mod: DS.attr('boolean')