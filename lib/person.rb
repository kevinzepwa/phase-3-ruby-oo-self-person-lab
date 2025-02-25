# your code goes here
require "pry"

class Person
    attr_accessor :bank_account, :NAME, :happiness, :hygiene
    
    def initialize(name)
        @NAME = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def name
        @NAME
    end
    
    def happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
        @happiness
    end
    #binding pry
    def hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
        @hygiene
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
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
        self.happiness+=2
        self.hygiene-=3
        "♪ another one bites the dust ♫"
    end
    
    def call_friend(friend)
        self.happiness+=3
        friend.happiness+=3
        "Hi #{friend.NAME}! It's #{self.NAME}. How are you?"
    end
    
    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness-=2
            person.happiness-=2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness+=1
            person.happiness+=1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end 