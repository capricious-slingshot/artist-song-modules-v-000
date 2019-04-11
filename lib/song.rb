class Song
  @@all = []
  extend   Memorable::ClassMethods
  include  Memorable::InstanceMethods
  extend   Findable
  include  Paramable

  attr_accessor :name, :artist

  # def self.all
  #   @@all
  # end
end
