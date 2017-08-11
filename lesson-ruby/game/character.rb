module TechAcademy
  module RPG
    module Characters
      class Character
        
        attr_accessor :hp, :power
        
        def initialize(hp, power)
          self.hp = hp
          self.power = power
        end
        
        def name
          ''
        end
        
        def attack(character)
          character.hp -= self.power
          puts "#{self.name}が#{character.name}を攻撃して#{self.power}ポイントのダメージを与えた！"
          
          if character.hp <= 0
            self.defeat(character)
          end
        end
        
        def defeat(character)
          puts "#{self.name}は#{character.name}を倒した！"
        end
      end
    end
  end
end
      