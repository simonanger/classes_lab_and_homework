class Library

  attr_reader( :books )
  attr_writer( :books )

  def initialize(books)
  @books = books
  end

  def all_details
    return @books
  end

  def rental_details(library, title)
    for book in @books
      if title == book[:title]
        return book[:rental_details]
      end
    end
  end


  def add_new(title)
  @books.push(
    {
      title: title,
      rental_details: {
       student_name: "",
       date: ""}
    }
    )
  end

  def update(title, name, date )
    for book in @books
      if title == book[:title]
        book[:rental_details][:student_name] = name
        book[:rental_details][:date] = date
        return book
      end
    end
  end

end
