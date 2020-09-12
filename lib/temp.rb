# def initialize
#     font = TTY::Font.new(:starwars)
#     system "clear"
#     puts Pastel.new.cyan(font.write("BestByMe"))
#     puts Pastel.new.magenta("----------------------------------------------------------------------------------------")
#     puts Pastel.new.cyan("Welcome to BestByMe, the best resource for top-rated businesses in your area!")
#     self.login_prompt
#   end
#   #Sends the user to the login screen, once authorized sends them to the main menu.
#   def login_prompt
#     @user = self.create_new_account_or_login
#     self.main_menu
#   end
#   #Prompts user to either login or create a new account.
#   def create_new_account_or_login
#     prompt = TTY::Prompt.new
#     prompt.select("Would you like to create a new account or sign in to an existing account?") do |menu|
#       #calls the appropriate method based on user input.
#       menu.choice "sign in to an existing account", -> { self.sign_into_existing_account }
#       menu.choice "create a new account", -> { self.create_new_user_account }
#     end
#   end
#   #Walks user through the process of creating a new account.
#   def create_new_user_account
#     puts "Please enter your username"
#     user_username_input = gets.chomp
#     user = User.find_by(username: user_username_input)
#     if user == nil
#       puts Pastel.new.cyan("Your username has been saved. Please enter your first name.")
#       user_name = gets.chomp
#       password = TTY::Prompt.new
#       user_password = password.mask("Please enter your password.")
#       system "clear"
#       puts Pastel.new.cyan.bold("You're all set up #{user_name.capitalize}! Your username is #{user_username_input}.")
#       puts Pastel.new.magenta("----------------------------------------------------------------------------")
#       user = User.create(name: user_name, username: user_username_input, password: user_password)
#     else
#       puts Pastel.new.red("Sorry that username is already taken.")
#       self.create_new_user_account
#     end
#     user
#   end
#   #Guides user through the login process.
#   def sign_into_existing_account
#     puts Pastel.new.cyan("Please enter your username.")
#     user_username = gets.chomp
#     password = TTY::Prompt.new
#     user_password = password.mask("Please enter your password.")
#     user = User.find_by(username: user_username, password: user_password)
#     system "clear"
#     #Checks to see whether a matching username can be found.
#     #If a match is found, the user is logged in and greeted by name.
#     # If no match is found, the user to is instructed to re-enter the information.
#     if user == nil
#       puts Pastel.new.red("There is no user found with that username and password. Please try again.")
#       self.create_new_account_or_login
#     else
#       user = User.find_by(username: user_username, password: user_password)
#       puts Pastel.new.cyan.bold("Hello #{user.name}!")
#       puts Pastel.new.magenta("-----------------------------------------------------------------------------")
#     end
#     user
#   end