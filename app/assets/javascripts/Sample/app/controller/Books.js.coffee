Ext.define 'Sample.controller.Books',
  extend: 'Ext.app.Controller'
  views: [ 'book.List', 'book.Edit' ]
  stores: [ 'Books' ]
  models: [ 'Book' ]
  init: ->
    @control
      'booklist':
        itemdblclick: @editBook
      'bookedit button[action=save]':
        click: @updateBook
  editBook: (grid, record) ->
    view = Ext.widget('bookedit')
    view.down('form').loadRecord(record)
  updateBook: (button) ->
    win = button.up 'window'
    form = win.down 'form'
    record = form.getRecord()
    values = form.getValues()
    record.set values
    win.close()
    @getBooksStore().sync()
