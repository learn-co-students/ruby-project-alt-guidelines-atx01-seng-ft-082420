require 'tty-prompt'

class CliApplication
    attr_accessor :user, :sign, :horoscope
    def initialize
        font = TTY::Font.new(:doom)
        system "clear"
        puts Pastel.new.magenta(font.write("ASTRO", letter_spacing: 4))
        puts Pastel.new.magenta("----------------------------------------------------------------------------------------")
        puts Pastel.new.cyan("Welcome to ASTRO APP")
        create_user
    end

    def create_user
        prompt = TTY::Prompt.new(active_color: :green)
        puts Pastel.new.blue("Please enter your name.")
        user_name = gets.chomp
        #binding.pry
        sign_choices = ["Aries",  "Taurus", "Gemini", "Cancer", "Leo", "Virgo", "Libra", "Scorpio", "Sagittarius", "Capricorn", "Aquarius", "Pisces"]
        select_sign = prompt.select("Please select your sun sign", sign_choices)
        system "clear"

        if select_sign == "Aries"
            sign_id = 1
        elsif select_sign == "Taurus"
            sign_id = 2
        elsif select_sign == "Gemini"
            sign_id = 3
        elsif select_sign == "Cancer"
            sign_id = 4
        elsif select_sign == "Leo"
            sign_id = 5
        elsif select_sign == "Virgo"
            sign_id = 6
        elsif select_sign == "Libra"
            sign_id = 7
        elsif select_sign == "Scorpio"
            sign_id = 8
        elsif select_sign == "Sagittarius"
            sign_id = 9
        elsif select_sign == "Capricorn"
            sign_id = 10
        elsif select_sign == "Aquarius"
            sign_id = 11
        elsif select_sign == "Pisces"
            sign_id = 12
        else 
        end
        
        @user = User.create(name: user_name, sign_id: sign_id)
        
        @sign = Sign.find_by(id: @user.sign_id)
        
        @horoscope = Horoscope.find_by(id: @sign.horoscope_id)
       
        main_menu
        
    end  

    def main_menu
        prompt = TTY::Prompt.new(active_color: :blue)
        main_menu_options = ["Likes", "Dislikes", "Compatibility", "Vibe", "Mental Traits", "Physical Traits", "Exit"]
        user_action = prompt.select("Please select a reading for your sign.", main_menu_options)

        if user_action == "Likes"
            puts likes
        elsif user_action == "Dislikes"
            puts dislikes
        elsif user_action == "Compatibility"
            puts compatibility
        elsif user_action == "Vibe"
            puts vibe
        elsif user_action == "Mental Traits"
            puts mental_traits
        elsif user_action == "Physical Traits"
            puts physical_traits
        elsif user_action == "Exit"
            exit
        end

    end

    def likes
        puts Pastel.new.blue(@horoscope.favorites)
        main_menu
    end

    def dislikes
        puts Pastel.new.blue(@horoscope.hates)
        main_menu
    end

    def compatibility
        puts Pastel.new.blue(@horoscope.compatibility)
        main_menu
    end

    def vibe
        puts Pastel.new.blue(@horoscope.vibe)
        main_menu
    end

    def mental_traits
        puts Pastel.new.blue(@horoscope.mental_traits)
        main_menu
    end

    def physical_traits
        puts Pastel.new.blue(@horoscope.physical_traits)
        main_menu
    end

    def exit
        system "clear"
        puts Pastel.new.blue("Goodbye. See ya next time! :)")
    end 

end

#binding.pry
