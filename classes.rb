# Part A
class Student
  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort

  end

  def name
    return @student_name
  end

  def cohort
    return @cohort
  end

  def set_name( name )
    @student_name = name
  end

  def set_cohort( cohort )
    @cohort = cohort
  end

  def talk()
    return "I can talk"
  end

  def fav_lang(lang)
    return "I love #{lang}"
  end

end

# Part B
class Team

  attr_reader( :team_name, :players, :coach, :points )
  attr_writer( :team_name, :players, :coach, :points )

  def initialize(name, players, coach, points)
    @team_name = name
    @players = players
    @coach = coach
    @points = points
  end

  def new_player(new_player)
    @players.push(new_player)
  end

  def search_player(name)
    for player in @players
      if name == player
        return true
      end
    end
    return false
  end

  def add_points( points )
    return @points += points
  end


  # def team_name()
  #   return @team_name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def coach()
  #   return @coach
  # end


end
