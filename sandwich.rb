class SandwichShop
    def initialize
        @ingredients = {
            "bread" => ["Rye", "White", "Wheat", "Garlic"],
            "meat" => ["Beef", "Chicken", "Pork", "Xu"],
            "vegetable" => ["Tomatoes", "Cucumbers", "Pickles", "Lettuce", "Onions"],
            "condiment" => ["Ketchup", "Mayonaise", "Mustard", "Cheese"]
        }
        @selection = {}

        puts "Welcome to Xu's Sandwich Shop!"
        which_ingredients
        create_sandwich
    end

    def which_ingredients
        @ingredients.each do | ingredient_type, ingredient_list |
            puts
            puts "Please select your #{ingredient_type}:"
            @selection[ingredient_type] = []
            while true do
                puts "-- " + ingredient_list.join(", ")
                print "What would you like for #{ingredient_type}? "
                selected = gets.chomp!.capitalize
                if ingredient_list.include?(selected)
                    @selection[ingredient_type] << selected

                    if ingredient_type == "bread"
                        break
                    else
                        print "You have selected #{@selection[ingredient_type].join(", ")}, is that everything? (yes/no)"
                        continue = gets.chomp!.capitalize
                        if continue == "Yes"
                            break
                        end
                    end
                else
                    puts "Sorry, we don't have #{selected}"
                end
            end
        end
    end

    def create_sandwich
        puts "-------------------------------"
        puts "Here's your order for a delicious sandwich:"
        @selection.each do | ingredient_type, ingredient_list |
            puts "- #{ingredient_type.capitalize} | #{ingredient_list.join(", ")}"
        end
        puts "-------------------------------"
        puts "Thanks for your business!  Please come back soon."
    end
end

#instantiating the app
xuShop = SandwichShop.new
