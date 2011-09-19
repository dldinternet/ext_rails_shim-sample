Ext.define 'Sample.store.Books',
  extend: 'Rails.data.Store'
  model: 'Sample.model.Book'
  autoLoad: true
  pageSize: 20
