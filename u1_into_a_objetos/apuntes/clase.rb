class Student
    attr_accessor :notas
    def initialize(notas: [])
    end
    def averange
        @notas.sum / @notas.size
    end
end

def better(students)
    students.map{|st| st.notas.max}.max
end    

students = []
5.times do
    grades = [(1..7).to_a.sample, (1..7).to_a.sample, (1..7).to_a.sample, (1..7).to_a.sample,]
    student.push (Student.new(notas: grades))

end

puts better(students)

students.each do |st|
    pp st.notas
end    