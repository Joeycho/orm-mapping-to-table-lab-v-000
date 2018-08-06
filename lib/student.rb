class Student

  attr_accessor :name, :grade
  attr_reader :id

  def initialize(id=nil,name, grade)
    @id = id
    @name = name
    @grade = grade
  end

  def .create_table
    sql = <<-sql
      CREATE TABLE IF NOT EXISTS
      students(
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT
      )
      
    DB[:conn]
  end

  def .drop_table
  end

end
