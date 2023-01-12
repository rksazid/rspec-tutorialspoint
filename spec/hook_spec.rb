class SimpleClass
    attr_accessor :message
    def initialize
        puts "Creating a new instance of the SimpleClass class"
        @message = 'howdy'
    end

    def update_message(new_message)
        @message = new_message
    end
end

describe SimpleClass do
    context "When using the Simple class" do
        before(:each) do
            @simple_class = SimpleClass.new
        end

        it 'Should have an initial message' do
            expect(@simple_class).to_not be_nil
            @simple_class.message = 'Something else...'
        end

        it 'Should be able to change its message' do
            @simple_class.update_message('a new message')
            expect(@simple_class.message).to_not be 'howdy'
        end
    end
end 

describe "before and after hooks" do
    before(:each) do
        puts "Runs before each example"
    end

    after(:each) do
        puts "Runs after each example"
    end

    before(:all) do
        puts "Runs before all example"
    end

    after(:all) do
        puts "Runs after all example"
    end

    it "is the first exmaple in this spec file" do
        puts 'Running the first example'
    end

    it "is the second example in this spec file" do
        puts "Running the second example"
    end
end


