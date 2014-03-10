#= require jquery
#= require jquery_ujs
#= require websocket_rails/main
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require quiz_buzz

# for more details see: http://emberjs.com/guides/application/
window.QuizBuzz = Ember.Application.create({
  LOG_TRANSITIONS: true
  LOG_ACTIVE_GENERATION: true
  ready: ->
    console.log('QuizBuzz App is ready.');
  })

