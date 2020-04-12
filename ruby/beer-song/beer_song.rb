class BeerSong
    

    def self.recite(start, finish)
        bottles = "bottles"

        penultimate_strophe = "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
        final_strophe = "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
   
        lyrics= [] 

        start.downto(start-finish+1){ |n| 
        bottles = "bottle" if n - 1 == 1

        lyrics << "#{n} bottles of beer on the wall, #{n} bottles of beer.\nTake one down and pass it around, #{n-1} #{bottles} of beer on the wall.\n" if n > 1
        lyrics << penultimate_strophe if n == 1
        lyrics << final_strophe if n == 0 
    }
        
     lyrics.join("\n")
    end
end
