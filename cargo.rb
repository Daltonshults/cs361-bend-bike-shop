class Cargo
    MAX_CARGO_ITEMS = 10

    attr_accessor :cargo_contents

    def initialize(cargo_contents = [])
        @cargo_contents = cargo_contents
    end

    def add_cargo(item)
        if pannier_remaining_capacity > 0
            cargo_contents << item
        end        
    end

    def remove_cargo(item)
        cargo_contents.remove(item)
    end

    def pannier_capacity
        MAX_CARGO_ITEMS
    end

    def pannier_remaining_capacity
        MAX_CARGO_ITEMS - cargo_contents.size
    end
end
