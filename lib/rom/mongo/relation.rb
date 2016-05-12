module ROM::Mongo
  class Relation < ROM::Relation
    adapter :mongo

    forward :insert, :find, :only, :without, :skip, :limit, :where, :order_by
  end
end
