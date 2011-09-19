Ext.define 'Sample.view.book.List',
  extend: 'Ext.grid.Panel'
  alias: 'widget.booklist'
  title: 'All Books'
  store: 'Books'
  initComponent: ->
    @columns = [
      {header: 'Title',  dataIndex: 'title',  flex: 1},
      {header: 'Author', dataIndex: 'author', flex: 1}
    ]

    @callParent arguments
