require "test/unit"
require "greetxu"

class GreetxuTest < Test::Unit::TestCase
    def test_guest_string
        assert_instance_of(
            String,
            Greetxu.greet,
            "A string was expected"
        )
    end

    def test_user_string
        assert_match(
            'mary',
            Greetxu.greet("mary"),
            "User message should have been returned"
        )
    end
end
