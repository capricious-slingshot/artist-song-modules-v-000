module  Memorable
  module ClassMethods
    def all
      @@all
    end

    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end

  module InstanceMethods
    def initialize
      binding.pry
      self.class.all << self
    end
  end
end