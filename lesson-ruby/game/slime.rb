require './character'

module TechAcademy
  module RPG
    module Characters
      class Slime < Character
        @@type = 'スライム'
        
        attr_accessor :suffix
        
        def initialize(suffix)
          super(10, 3)
          self.suffix = suffix
        end
        
        def name
          @@type + self.suffix
        end
        
        def self.description
          puts @@type + 'は、最弱のモンスターだ！'
        end
      end
    end
  end
end