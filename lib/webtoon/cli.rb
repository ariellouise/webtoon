class Webtoon::CLI
  def call
    puts "Welcome Webtooner!"
    start
  end

  def start
    puts ""
    puts "MAIN MENU"
    puts ""
    puts "What would you like to view? Your options are as follows:"
    puts ""
    puts "Enter 1 to view top ten comics overall."
    puts "Enter 2 to view top ten comics by genre."
    puts "Enter 3 to view top ten comics by age and gender."
    puts "Enter 4 to exit the program."

    menu_input = gets.strip.to_i

    if menu_input == 1
      puts "Top 10 Comics"
    elsif menu_input == 2
      genre_options
    elsif menu_input == 3
      puts "Target options"
    elsif menu_input == 4
      exit_program
    else
     call #prompts user with Main Menu options when user input is invalid
    end
 end

  def exit_program
    puts "Thanks for using Webtoon. See you next time."
    exit
  end

  def genre_options
    puts ""
    puts "Select your genre. Your options are as follows:"
    puts ""
    puts "Enter 1 to view top ten Action / Fantasy comics."
    puts "Enter 2 to view top ten Romance / Drama comics."
    puts "Enter 3 to view top ten Comedy comics."
    puts "Enter 4 to view top ten Slice of Life comics."
    puts "Enter 5 to view top ten other genre comics."
    puts "Enter 6 to return to the Main Menu."

    genre_input = gets.strip.to_i

    if genre_input == 1
      puts "Top Ten Action / Fantasy comics"
    elsif genre_input == 2
      puts "Top Ten Romance / Drama comics"
    elsif genre_input == 3
      puts "Top Ten Comedy comics"
    elsif genre_input == 4
      puts "Top Ten Slice of Life comics"
    elsif genre_input == 5
      puts "Top Ten other genre comics"
    elsif genre_input == 6
      start
    end
  end

end
