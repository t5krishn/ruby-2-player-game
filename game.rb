require './helpers'


class Game
    def initialize(p1, p2)
        @current = p1
        @next = p2
    end

    def changePlayers()
        @current, @next = @next, @current
    end

    def start()
        while(true)
            question = getQnA()
            puts "#{@current.name}: What does #{question[:q]} equal?"
            answer = $stdin.gets.chomp
            
            if (answer.to_i == question[:a])
                puts "#{@current.name}: YES! You are correct."
            else
                puts "#{@current.name}: Seriously? No!"
                @current.decrementLife()
            end

            # CHECK FOR LIVES REMAINING
            if (@current.lives == 0)
                puts "#{@next.name} wins with a score of #{@next.lives}/3"
                puts "----- GAME OVER -----"
                break
            elsif (@next.lives == 0)
                puts "#{@current.name} wins with a score of #{@current.lives}/3"
                puts "----- GAME OVER -----"
                break
            end

            puts "#{@current.name}: #{@current.lives}/3 vs #{@next.name}: #{@next.lives}/3"
            changePlayers()
            puts "----- NEW TURN -----"
        end
    end

end
