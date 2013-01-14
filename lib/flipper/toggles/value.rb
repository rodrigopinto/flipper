module Flipper
  module Toggles
    class Value < Toggle
      def enable(thing)
        super
        adapter.write adapter_key, thing.value
      end

      def disable(thing)
        super
        adapter.delete adapter_key
      end

      def value
        adapter.read adapter_key
      end
    end
  end
end
