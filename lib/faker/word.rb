module Faker
  class Word < Base
    flexible :team

    class << self
      def adjective
        fetch('word.adjective')
      end

      def noun
        fetch('word.noun')
      end

      def verb
        fetch('word.verb')
      end

    end

  end
end
