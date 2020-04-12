class Tournament
  HEADER = "Team                           | MP |  W |  D |  L |  P".freeze

  def self.tally(input)
    final_scores = {}


    input.split("\n").each do |line|
      local, visitor, result = line.split("\;")

      final_scores[local] = final_scores[local] || { match_played: 0, wins: 0, draws: 0, losses: 0, points: 0 }
      final_scores[visitor] = final_scores[visitor] || { match_played: 0, wins: 0, draws: 0, losses: 0, points: 0 }

      case result
      when 'win'
        final_scores[local][:wins] += 1
        final_scores[visitor][:losses] += 1

        final_scores[local][:points] += 3

        final_scores[local][:match_played] +=1
        final_scores[visitor][:match_played] +=1
      when 'draw'
        final_scores[local][:draws] += 1
        final_scores[visitor][:draws] += 1

        final_scores[local][:points] += 1
        final_scores[visitor][:points] += 1

        final_scores[local][:match_played] +=1
        final_scores[visitor][:match_played] +=1

      when 'loss'

        final_scores[local][:losses] += 1
        final_scores[visitor][:wins] += 1

        final_scores[visitor][:points] += 3

        final_scores[local][:match_played] +=1
        final_scores[visitor][:match_played] +=1
      end
    end


    body = final_scores.map do |k, v|
      [k, v[:match_played], v[:wins], v[:draws], v[:losses], v[:points]]
    end

    body = body.sort do |a, b|
      points_team_a = a[5]
      points_team_b = b[5]
      if points_team_a == points_team_b
        a[0] <=> b[0]
      else
        points_team_b <=> points_team_a
      end
    end#.reverse

    scores_formatted_for_output = body.map do |line|
      "#{line[0].ljust(31, ' ')}|  #{line[1]} |  #{line[2]} |  #{line[3]} |  #{line[4]} |  #{line[5]}"
    end


    # byebug
    expected = <<~TALLY
    #{HEADER}
    TALLY
    if input.length > 1
      scores_formatted_for_output.each do |score|
        expected += score + "\n"
      end
    else
    end
    # byebug
    expected
  end
end
