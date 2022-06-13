# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account ,:happiness , :hygiene


    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end


    def happiness=(new_level)
        if new_level>10 
            @happiness = 10
        elsif new_level<0
            @happiness = 0
        else 
            @happiness = new_level
        end
    end
    def hygiene=(new_level)
        if new_level>10 
            @hygiene = 10
        elsif new_level<0
            @hygiene = 0
        else 
            @hygiene = new_level
        end
    end

    def happy?
        if self.happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if self.hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(amount)
        self.bank_account = self.bank_account+amount
        return "all about the benjamins"
    end
    def take_bath
        self.hygiene+=4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.happiness+=2
        self.hygiene= self.hygiene-3
        return "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness+=3
        friend.happiness+=3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness-=2
            friend.happiness-=2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness+=1
            friend.happiness+=1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end
