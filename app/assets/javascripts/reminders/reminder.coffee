class window.Reminder
  constructor: ->
    $('#reminder_remedy').autocomplete(
      source: ['Buscopam', 'Tilenol', 'Floratil', 'Cataflan']
    )
    $('#reminder_forever_remedy_true').click =>
      @checked()

    $('#reminder_dependent_true').click =>
      @checked()

  checked: ->
    if $('#reminder_forever_remedy_true').is(":checked")
      @hideRemedy()
    if $('#reminder_dependent_true').is(":checked")
      @hideDependent()

  hideRemedy: ->
    $('.remedy').hide()

  hideDependent: ->
    $('.dependent').hide()