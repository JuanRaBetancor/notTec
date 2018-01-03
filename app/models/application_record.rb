class ApplicationRecord < ActiveRecord::Base
self.abstract_class = true
scope :publicados, ->{ where(state: "published") }
 
 scope :ultimos, ->{ order("created_at DESC") }
end
