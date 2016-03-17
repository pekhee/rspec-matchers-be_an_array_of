module RSpec
  module Matchers
    # Checks if all elements in an array are of specific type
    module BeAnArrayOf
      # Actual matcher
      class Matcher
        include RSpec::Matcher
        register_as :be_an_array_of

        def match
          return false unless actual.is_a? Array

          actual.map { |e| e.is_a? expected }.reduce(&:&)
        end

        def failure_message
          <<-MSG.gsub(/^\s+/, " ")
            expected object to be an array#{" of " + type.name unless type.nil?} but it was
            #{actual}
          MSG
        end
      end
    end
  end
end
