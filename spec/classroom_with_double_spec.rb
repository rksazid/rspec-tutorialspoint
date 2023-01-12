class ClassRoom
    def initialize(students)
        @students = students
    end

    def list_student_names
        @students.map(&:name).join(',')
    end
end

describe ClassRoom do
    context "When we use the classroom class" do
        it "the list_student_names method should work correctly" do
            student1 = double('student')
            student2 = double('student')

            allow(student1).to receive(:name) { 'Rezaul Karim' }
            allow(student2).to receive(:name) { 'Abdur Rahman' }

            cr = ClassRoom.new [student1, student2]
            expect(cr.list_student_names).to eq('Rezaul Karim,Abdur Rahman')
        end
    end
end
