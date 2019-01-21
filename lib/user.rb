require "pry"
class User
    
    attr_accessor :email
    attr_accessor :name
    
    def initialize(email, user_name)
        @email = email
        @name = user_name
    end
end

#binding.pry
puts "end of file"


