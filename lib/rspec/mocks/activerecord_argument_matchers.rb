require "rspec/mocks/activerecord_argument_matchers/version"

module RSpec
  module Mocks
    module ActiverecordArgumentMatchers
      class SameRecordMatcher
        def initialize(record)
          @record = record
        end

        def ==(other)
          other.class == @record.class &&
          other.id    == @record.id
        end
      end

      def same_record_of(record)
        SameRecordMatcher.new(record)
      end
    end
  end
end
