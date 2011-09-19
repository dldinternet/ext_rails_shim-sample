class Book < ActiveRecord::Base
  attr_protected :id, :updated_at, :created_at
end
