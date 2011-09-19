Ext.application
  name: 'Sample'
  appFolder: 'assets/Sample/app'
  controllers: [
    'Books'
  ]
  launch: ->
    Ext.create 'Ext.container.Viewport',
      layout: 'fit'
      items: [ {
        xtype: 'booklist'
      } ]
