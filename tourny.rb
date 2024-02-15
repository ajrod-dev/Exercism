def tally(input_file, output_file)
  results = Hash.new { |hash, key| hash[key] = { MP: 0, W: 0, D: 0, L: 0, P: 0 } }

  File.foreach(input_file) do |line|
    team1, team2, outcome = line.chomp.split(';')

    case outcome
    when 'win'
      results[team1][:W] += 1
      results[team1][:P] += 3
      results[team2][:L] += 1
    when 'loss'
      results[team1][:L] += 1
      results[team2][:W] += 1
      results[team2][:P] += 3
    when 'draw'
      results[team1][:D] += 1
      results[team1][:P] += 1
      results[team2][:D] += 1
      results[team2][:P] += 1
    end

    [team1, team2].each { |team| results[team][:MP] += 1 }
  end

  sorted_results = results.sort_by { |team, stats| [-stats[:P], team] }

  File.open(output_file, 'w') do |file|
    file.puts "Team                           | MP |  W |  D |  L |  P"
    sorted_results.each do |team, stats|
      file.puts "#{team.ljust(30)} | #{stats[:MP]} | #{stats[:W]} | #{stats[:D]} | #{stats[:L]} | #{stats[:P]}"
    end
  end
end

tally('input.txt', 'output.txt')
