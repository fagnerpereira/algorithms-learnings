module TournamentWinner
  def self.call(competitions, results)
    # [
    #   ["HTML", "C#"],
    #   ["C#", "Python"],
    #   ["Python", "HTML"]
    # ],
    # [0, 0, 1]
    # O(log(n))
    wins = Hash.new { |k, v| k[v] = 0 }
    competitions.each_with_index do |competition, i|
      home, away = competition
      if results[i] == 0
        wins[away] += 3
      elsif results[i] == 1
        wins[home] += 3
      end
    end
    wins.sort_by { |k, v| v }.last.first
  end
end
