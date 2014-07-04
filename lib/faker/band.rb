module Faker
  class Band < Base
    flexible :band

    class << self
      def name
        parse('band.name')
      end
    end

  end
end
