# your code goes here
require "pry"
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness 
        @hygiene = hygiene 
    end
    def happiness=(happiness_scale)
        if happiness_scale > 10
            happiness_scale = 10
        elsif happiness_scale < 0
            happiness_scale = 0
        end
        @happiness = happiness_scale 
    end
    def hygiene=(hygiene_scale)
        if hygiene_scale > 10
            hygiene_scale = 10
        elsif hygiene_scale < 0
            hygiene_scale = 0
        end  
        @hygiene = hygiene_scale 
    end
    def happy?
        if @happiness > 7
            true
        else
            false
        end 
    end
    def clean?
        if @hygiene > 7
            true
        else
            false
        end 
    end
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end
    def take_bath
        hygiene=(self.hygiene)
        self.hygiene += 4 
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        happiness=(self.happiness)
        self.happiness += 2
        hygiene=(self.hygiene)
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        happiness=(self.happiness)
        self.happiness += 3
        happiness=(friend.happiness)
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person, topic)
        if topic == "politics"
            happiness=(self.happiness)
            self.happiness -= 2
            happiness=(person.happiness)
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            happiness=(self.happiness)
            self.happiness += 1
            happiness=(person.happiness)
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end