class User
    def initialize(name, age)
        @name = name
        @age = age
    end

    def name
        @name
    end

    def to_s
        "eu eu eu: #{@name}"
    end
end