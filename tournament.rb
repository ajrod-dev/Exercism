class Tournament

  def tally(my_file)
    teams = {}


    File.foreach("file.txt") do |line|
      arr = []
      arr = line.chomp.split(";")
      if arr[2] == "win"
        if teams.has_key?(arr[0])
          

    end

  end


end


tourny = Tournament.new
tourny.tally("file.txt")
