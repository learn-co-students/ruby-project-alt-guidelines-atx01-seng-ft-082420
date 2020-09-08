#The $ makes prompt a global variable
$prompt = TTY::Prompt.new

# name = prompt.ask("What is your name?")
# puts name

# ask = prompt.yes?("Do you like  Ruby?")
# p ask

# password = prompt.mask("What is the secret?")
# p password
def start
    p "Welcome to our Application!"
    userInfo
end

def userInfo
    name = $prompt.ask("What is your name?")
    password = $prompt.mask("What is your password?")
end