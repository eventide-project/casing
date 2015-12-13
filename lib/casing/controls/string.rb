module Casing
  module Controls
    module String
      module Underscore
        def self.example
          'some_string'
        end

        module Contrary
          def self.example
            'SomeString'
          end
        end
      end

      module Pascal
        def self.example
          'SomeString'
        end

        module Contrary
          def self.example
            'someString'
          end
        end
      end

      module Camel
        def self.example
          'someString'
        end

        module Contrary
          def self.example
            'SomeString'
          end
        end
      end

      module Symbol
        def self.example
          :someString
        end

        module Contrary
          def self.example
            'SomeString'
          end
        end
      end
    end
  end
end
