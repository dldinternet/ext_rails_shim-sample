Ext.define 'Sample.model.Book',
  extend: 'Ext.data.Model'
  fields: [
    {name:'id', type:'integer'},
    'title',
    'author',
    {name:'created_at', type:'date'},
    {name:'updated_at', type:'date'},
  ]
