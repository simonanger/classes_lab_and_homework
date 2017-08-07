require( "minitest/autorun" )
require_relative( "./library" )

class TestLibrary < MiniTest::Test

  # def setup
  #
  #   books = [
  #         {
  #       title: "Lord of the Rings",
  #       rental_details: {
  #        student_name: "Jeff",
  #        date: "01/12/16"
  #       }
  #     },
  #         {
  #       title: "1984",
  #       rental_details: {
  #        student_name: "Steve",
  #        date: "01/05/17"
  #       }
  #     },
  #         {
  #       title: "Animal Farm",
  #       rental_details: {
  #        student_name: "Matt",
  #        date: "27/06/17"
  #       }
  #     }
  #   ]
  #   @library = Library.new( "My Library", books )
  # end

  def test_all_details
    library = Library.new([
            {
          title: "Lord of the Rings",
          rental_details: {
           student_name: "Jeff",
           date: "01/12/16"
          }
        },
            {
          title: "1984",
          rental_details: {
           student_name: "Steve",
           date: "01/05/17"
          }
        },
            {
          title: "Animal Farm",
          rental_details: {
           student_name: "Matt",
           date: "27/06/17"
          }
        }
      ])
    assert_equal([
            {
          title: "Lord of the Rings",
          rental_details: {
           student_name: "Jeff",
           date: "01/12/16"
          }
        },
            {
          title: "1984",
          rental_details: {
           student_name: "Steve",
           date: "01/05/17"
          }
        },
            {
          title: "Animal Farm",
          rental_details: {
           student_name: "Matt",
           date: "27/06/17"
          }
        }
      ], library.all_details())
  end

  def test_rental_details
    library = Library.new([
            {
          title: "Lord of the Rings",
          rental_details: {
           student_name: "Jeff",
           date: "01/12/16"
          }
        },
            {
          title: "1984",
          rental_details: {
           student_name: "Steve",
           date: "01/05/17"
          }
        },
            {
          title: "Animal Farm",
          rental_details: {
           student_name: "Matt",
           date: "27/06/17"
          }
        }
      ])
      assert_equal({
       student_name: "Jeff",
       date: "01/12/16"}, library.rental_details(library, "Lord of the Rings"))
     end

     def test_add_book
       library = Library.new([
               {
             title: "Lord of the Rings",
             rental_details: {
              student_name: "Jeff",
              date: "01/12/16"
             }
           },
               {
             title: "1984",
             rental_details: {
              student_name: "Steve",
              date: "01/05/17"
             }
           },
               {
             title: "Animal Farm",
             rental_details: {
              student_name: "Matt",
              date: "27/06/17"
             }
           },
         ])

         assert_equal([
                 {
               title: "Lord of the Rings",
               rental_details: {
                student_name: "Jeff",
                date: "01/12/16"
               }
             },
                 {
               title: "1984",
               rental_details: {
                student_name: "Steve",
                date: "01/05/17"
               }
             },
                 {
               title: "Animal Farm",
               rental_details: {
                student_name: "Matt",
                date: "27/06/17"
               }
             },
                 {
               title: "Dune",
               rental_details: {
                student_name: "",
                date: ""
               }
             }
           ], library.add_new("Dune"))
     end

     def test_update
       library = Library.new([
               {
             title: "Lord of the Rings",
             rental_details: {
              student_name: "Jeff",
              date: "01/12/16"
             }
           },
               {
             title: "1984",
             rental_details: {
              student_name: "Steve",
              date: "01/05/17"
             }
           },
               {
             title: "Animal Farm",
             rental_details: {
              student_name: "Matt",
              date: "27/06/17"
             }
           },
         ])
         assert_equal({
       title: "Animal Farm",
       rental_details: {
        student_name: "Simon",
        date: "20/09/2017"
       }
     }, library.update("Animal Farm", "Simon", "20/09/2017"))
     end
end
