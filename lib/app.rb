#The $ makes prompt a global variable
$prompt = TTY::Prompt.new

def greet
    puts 'Welcome to the App, the best source for festival information!'
    fan_festival
end

def fan_festival
    upcoming_festival = $prompt.select("Choose an upcoming festival", %w(EDC Audiotistic Madness))
    found_festival = Festival.find_by(name: upcoming_festival)
    puts "#{found_festival.name} is #{found_festival.date}. This year in #{found_festival.location} you can catch #{found_festival.artist}"
    puts "Get your #{found_festival.name} ticket for $#{found_festival.price} before they sellout!"
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