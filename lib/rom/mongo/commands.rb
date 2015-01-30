require 'bson'

require 'rom/commands'

module ROM
  module Mongo
    module Commands
      class Create < ROM::Commands::Create
        def collection
          relation
        end

        def execute(document)
          collection.insert(document)
          [document]
        end
      end

      class Update < ROM::Commands::Update
        def collection
          relation
        end

        def execute(attributes)
          collection.update_all('$set' => attributes)
          collection.to_a
        end
      end

      class Delete < ROM::Commands::Delete
        def execute
          removed = target.to_a
          target.remove_all
          removed
        end
      end
    end
  end
end
