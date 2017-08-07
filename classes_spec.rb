require( "minitest/autorun" )
require_relative( "./classes" )

class TestClasses < MiniTest::Test
# Part A
  def test_student_name
    student = Student.new("Simon", 15)
    student.set_name("Dan")
    assert_equal( "Dan", student.name() )
  end

  def test_cohort
    student = Student.new("Simon", 15)
    student.set_cohort(14)
    assert_equal( 14, student.cohort() )
  end

  def test_talk
    student = Student.new("Simon", 15)
    assert_equal( "I can talk", student.talk() )
  end

  def test_fav_lang
    student = Student.new("Simon", 15)
    assert_equal( "I love Ruby", student.fav_lang("Ruby") )
  end

# Part B
  def test_team_name
    team = Team.new("Raiders", ["Carr", "Lynch", "Mack"], "Del Rio", 0)
    assert_equal( "Raiders", team.team_name() )
  end

  def test_players
    team = Team.new("Raiders", ["Carr", "Lynch", "Mack"], "Del Rio", 0)
    assert_equal( ["Carr", "Lynch", "Mack"], team.players() )
  end

  def test_coach
    team = Team.new("Raiders", ["Carr", "Lynch", "Mack"], "Del Rio", 0)
    assert_equal( "Del Rio", team.coach() )
  end

  def test_new_players
    team = Team.new("Raiders", ["Carr", "Lynch", "Mack"], "Del Rio", 0)
    assert_equal( ["Carr", "Lynch", "Mack", "Cook"], team.new_player("Cook") )
  end

  def test_search_player
    team = Team.new("Raiders", ["Carr", "Lynch", "Mack"], "Del Rio", 0)
    assert_equal( true, team.search_player("Mack"))
  end

  def test_add_points
    team = Team.new("Raiders", ["Carr", "Lynch", "Mack"], "Del Rio", 0)
    assert_equal(1, team.add_points(1))
  end

end
