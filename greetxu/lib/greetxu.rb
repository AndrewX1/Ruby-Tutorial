require "greetxu/version"
require "greetxu/message"

# The main Greetxu driver
module Greetxu
    # Randomizes a greeting message depending on whether a name has been passed in
    #
    # Example:
    #   >> Greetxu.greet
    #   => "A random greeting message for guest"
    #   >> Greetxu.greet("mary")
    #   => "A random greeting message for mary"
    #
    # Arguments
    #   name: (string)

    def self.greet(name = nil)
        if name.nil?
            return self::GUEST_MESSAGE.sample
        else
            return sprintf(self::USER_MESSAGE.sample, name)
        end
    end
end
