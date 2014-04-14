class window.Reminder
  constructor: ->
    @remedy_false = $('#reminder_forever_remedy_false')
    @remedy_true = $('#reminder_forever_remedy_true')
    @dependent_true = $('#reminder_dependent_true')
    @dependent_false = $('#reminder_dependent_false')

    @defaultCheck()

    $('#reminder_remedy_name').autocomplete(
      source: '/admin/remedies/autocomplete',
      maxLength: 15
    )

    @remedy_true.click =>
      @hideRemedy()

    @remedy_false.click =>
      @showRemedy()

    @dependent_true.click =>
      @showDependent()

    @dependent_false.click =>
      @hideDependent()

  defaultCheck: ->
    if @remedy_true.is(':checked')
      @hideRemedy()
    else
      @showRemedy()

    if @dependent_true.is(':checked')
      @showDependent()
    else
      @hideDependent()

  hideRemedy: ->
    $('.remedy').hide()

  showRemedy: ->
    $('.remedy').show()

  hideDependent: ->
    $('.dependent').hide()

  showDependent: ->
    $('.dependent').show()