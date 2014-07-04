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

      def verb_ing
        fetch('word.verb_ing')
      end

    end

  end
end
