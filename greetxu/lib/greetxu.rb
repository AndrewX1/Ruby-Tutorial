require "greetxu/version"

# The main Greetxu driver
module Greetxu
    # Random Messages for guest
    GUEST_MESSAGE = [
        "Welcome, please login to get started",
        "To begin, please login",
        "Hey guest!  Click login to begin"
    ]

    # Random Messages for user
    USER_MESSAGE = [
        "Hello %s",
        "Hi %s",
        "How are you %s",
        "Welcome, %s"
    ]

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
