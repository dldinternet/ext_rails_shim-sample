Ext.define 'Sample.view.book.List',
  extend: 'Ext.grid.Panel'
  alias: 'widget.booklist'
  title: 'All Books'
  store: 'Books'
  columns: [
    {header: 'Id', dataIndex: 'id', align: 'right'},
    {header: 'Title',  dataIndex: 'title',  flex: 1},
    {header: 'Author', dataIndex: 'author', flex: 1},
    {header: 'Created', dataIndex: 'created_at', flex: 1},
    {header: 'Updated', dataIndex: 'updated_at', flex: 1},
  ]
  dockedItems: [ {
    xtype: 'pagingtoolbar'
    store: 'Books'
    dock: 'bottom'
    displayInfo: true
  } ]
