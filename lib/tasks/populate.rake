namespace :db do
  desc "Sirve para borrar el contenido de las tablas y cargar con datos aleatorios"
  task :populate => :environment do
    require 'populator'
    require 'faker'

    [Operation, OperationItem, Article, Category, Brand, Company, Address, Locality, Province, Country, Store].each(&:delete_all)

    Operation.populate 10 do |op|
      op.operation_type_id = Faker::Number.digit
      op.store_id = Faker::Number.digit
      op.title = Faker::Commerce.product_name
      op.amount = Faker::Number.digit
      op.description = Faker::Commerce.product_name

      OperationItem.populate 10 do |oi|
        oi.operation_id = op.id
        oi.budget_category_id = Faker::Number.digit
        oi.article_id = Faker::Number.digit
        oi.amount = Faker::Number.digit
      end
    end

    Country.populate 5 do |c|
      c.name = Faker::Address.country

      Province.populate 5 do |p|
        p.name = Faker::Address.state
        p.country_id = c.id

        Locality.populate 5 do | l |
          l.name = Faker::Address.city
          l.province_id = p.id
        end
      end
    end

    Address.populate 20 do | a |
      a.locality_id = Faker::Number.digit
      a.street = Faker::Address.street_name
      a.number = Faker::Address.building_number
      a.floor = Faker::Address.secondary_address
      a.department = Faker::Address.secondary_address
      a.neighborhood = Faker::Address.city_prefix
    end

    Store.populate 10 do | s |
      s.address_id = Faker::Number.digit
      s.name = Faker::Company.catch_phrase
    end

    Category.populate 10 do | c |
      c.name = Faker::Commerce.department
      c.description = Faker::Commerce.department

      Category.populate 5 do | sc |
        sc.name = Faker::Commerce.department
        sc.description = Faker::Commerce.department
        sc.category_id = c.id

        Category.populate 3 do | subc |
          subc.name = Faker::Commerce.department
          subc.description = Faker::Commerce.department
          subc.category_id = c.id
        end
      end
    end

    Company.populate 5 do | c |
      c.address_id = Faker::Number.digit
      c.name = Faker::Company.name

      Brand.populate 5 do | b |
        b.company_id = c.id
        b.name = Faker::Company.suffix

        Article.populate 3 do | a |
          a.brand_id = b.id
          a.name = Faker::Commerce.product_name
          a.details = Faker::Commerce.product_name
        end
      end
    end
  end
end