#The $ makes prompt a global variable
$prompt = TTY::Prompt.new

def greet
    puts 'Welcome to the App, the best source for festival information!'
    account = $prompt.yes?("Do you have an account?")
    if account == true
        name = $prompt.ask("Enter account name:")
        find_fan(name)
    else
        create_fan
    end
end

def find_fan(name)
    if Fan.find_by(name: name) == nil
        puts "Sorry User not found"
        create_fan
    else
        fan = Fan.find_by(name: name)
        fan_festival(fan)
    end
    # fan_festival(fan)
end

def fan_festival(fan)
    # Finds festival
    upcoming_festival = $prompt.select("Choose an upcoming festival", %w(EDC Audiotistic Madness))
    found_festival = Festival.find_by(name: upcoming_festival)

    puts "#{found_festival.name} is #{found_festival.date}. This year in #{found_festival.location} you can catch #{found_festival.artist}"
    puts "Get your #{found_festival.name} ticket for $#{found_festival.price} before they sellout!"
    #Buys ticket for current user
    buy_ticket = $prompt.yes?("Do you want to buy a festival ticket for #{found_festival.name}. The total is $#{found_festival.price}")
    if buy_ticket == true
        Ticket.create(name: "#{found_festival.name}", fan_id: fan.id, festival_id: found_festival.id)
        puts "Purchase Successful"
        
    else
        multi_option(fan)
    end
end

def create_fan
    already_have = $prompt.yes?("Are you sure you have an account?")
    if already_have == true
        name = $prompt.ask("Enter account name so we can check:")
        find_fan(name)
    else
        puts 'Enter your name to continue'
        name = $prompt.ask("What is your name?")
        Fan.create(name: name)
        find_fan(name)
    end
end

def multi_option(fan)
    user_pick = $prompt.select("Do you need ticket help?", %w(Refund Update Exit))
    if user_pick == "Refund"
        refund_ticket(fan)
    elsif user_pick == "Update"
        update_ticket(fan)
    else
        puts "Thank you for using our app!"
    end
end

def refund_ticket(fan)
    all_tix = Fan.find_by(name: fan.name).tickets
    # tix = $prompt.select
    tix = all_tix.each do |ticket|
        
    end
   
    
end

def update_ticket(fan)

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