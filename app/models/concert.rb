class Concert < ActiveRecord::Base
  belongs_to :venue
  default_scope :order => 'concert_date'
  
  def self.is_indexable_by(user, parent = nil)
     true
   end

   def self.is_creatable_by(user, parent = nil)
     user.admin?
   end

   def is_updatable_by(user, parent = nil)
     user.admin?
   end

   def is_deletable_by(user, parent = nil)
     user.admin?
   end

   def is_readable_by(user, parent = nil)
     true
   end
end
