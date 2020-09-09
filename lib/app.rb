#The $ makes prompt a global variable
$prompt = TTY::Prompt.new

def greet
    puts 'Welcome to the App, the best source for festival information!'
    account = $prompt.yes?("Do you have an account?")
    if account == true
        fan_festival
    else
        create_fan
    end
end

def fan_festival
    upcoming_festival = $prompt.select("Choose an upcoming festival", %w(EDC Audiotistic Madness))
    found_festival = Festival.find_by(name: upcoming_festival)
    puts "#{found_festival.name} is #{found_festival.date}. This year in #{found_festival.location} you can catch #{found_festival.artist}"
    puts "Get your #{found_festival.name} ticket for $#{found_festival.price} before they sellout!"
    buy_ticket = $prompt.yes?("Do you want to buy a festival ticket?")
    if buy_ticket == true
        name = $prompt.ask("Enter your name:")
        t_name = Fan.find_by(name: name)
        Ticket.create(name: "#{found_festival.name}", fan_id: t_name.id, festival_id: found_festival.id)
        puts "Purchase Successful"
        binding.pry
    else
        return
    end
end

def create_fan
    puts 'Enter your name to continue'
    name = $prompt.ask("What is your name?")
    Fan.create(name: name)
    fan_festival
end

def purchase_ticket

end





# name = prompt.ask("What is your name?")
# puts name

# ask = prompt.yes?("Do you like  Ruby?")
# p ask

# password = prompt.mask("What is the secret?")
# p password
# def start
#     p "Welcome to our Application!"
#     userInfo
# end

# def userInfo
#     name = $prompt.ask("What is your name?")
#     password = $prompt.mask("What is your password?")
# end