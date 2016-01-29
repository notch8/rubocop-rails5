# encoding: utf-8

module RuboCop
  module Cop
    module RSpec
      class Custom < Cop
        # include RuboCop::RSpec::TopLevelDescribe

        MESSAGE = "Hey you tripped the custom one."
        METHOD_STRING_MATCHER = /Rails/

        def on_send(node)
          # second_arg = args[1]
          # return unless second_arg && second_arg.type == :str
          # return if METHOD_STRING_MATCHER =~ second_arg.children.first

          add_offense(node, :expression, MESSAGE)
        end
      end
    end
  end
end
