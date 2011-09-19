Ext.define 'Sample.view.book.Edit',
  extend: 'Ext.window.Window'
  alias: 'widget.bookedit'
  title : 'Edit Book'
  layout: 'fit'
  autoShow: true

  initComponent: ->
    @items = [ {
      xtype: 'form'
      items: [
        {xtype: 'textfield',  name : 'title', fieldLabel: 'Title' },
        {xtype: 'textfield', name : 'author', fieldLabel: 'Author' }
      ]
    } ]

    @buttons = [
      {text: 'Save', action: 'save'},
      {text: 'Cancel', scope: this, handler: @close}
    ]

    @callParent arguments
