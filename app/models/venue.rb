class Venue < ActiveRecord::Base
   has_and_belongs_to_many   :concerts
   validates_presence_of     :url, :name, :location
   validates_uniqueness_of   :url, :name, :location
   
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
