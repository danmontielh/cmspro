class Article < ApplicationRecord
    belongs_to :author, class_name: 'User'
    belongs_to :category, class_name: 'Category'
end
