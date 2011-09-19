Ext.define 'Sample.store.Books',
  extend: 'Ext.data.Store'
  #  requires: [ 'Rails.data.proxy.Rest' ]
  model: 'Sample.model.Book'
  autoLoad: true
  proxy:
    type: 'rest'
    url: '/books'
    appendId: true
    format: 'json'
    reader:
      root: 'books'
      successProperty: 'success'
    writer:
      root: 'book'
      allowSingle: true