require File.expand_path('../../open_blocks', __FILE__)

namespace :db do
  desc "Populate database with Eateries and related data"

  task :populate => :environment do
    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke

# Locations
    resnik = Location.new(name: "Resnik", latitude: 40.442455, longitude: -79.939845)
    resnik.save!

    uc = Location.new(name: "University Center", latitude: 40.443339, longitude: -79.941963)
    uc.save!

    nsh = Location.new(name: "Newell Simon Hall", latitude: 40.443385, longitude: -79.945649)
    nsh.save!

    # tepper = Location.new(name: "Tepper")
    # tepper.save!

    # morewood = Location.new(name: "Morewood")
    # morewood.save!

    # hunt = Location.new(name: "Hunt")
    # hunt.save!

    # trucks = Location.new(name: "Food Trucks")
    # trucks.save!

    # cfa = Location.new(name: "CFA")
    # cfa.save!

    # wean = Location.new(name: "Wean")
    # wean.save!

# Eateries
    asiana = Eatery.new(name: "Asiana",
                        location: nsh,
                        summary: "Pan Asian Rice & Noodles",
                        color: "#E91E63")
    asiana.save!

    mitchells = Eatery.new(name: "Mitchells",
                        location: nsh,
                        summary: "Soups, pizzas, hot entrées and salad bar",
                        color: "#F44336")
    mitchells.save!

    nakama = Eatery.new(name: "Nakama Express",
                        location: resnik,
                        summary: "Freshly-made sushi",
                        color: "#3F51B5")
    nakama.save!

    cmc = Eatery.new(name: "Resnik Cafe",
                        location: resnik,
                        summary: "Fresh hot breakfast all day",
                        color: "#7E57C2")
    cmc.save!

    india = Eatery.new(name: "Taste of India",
                        location: resnik,
                        summary: "Indian Cuisine",
                        color: "#2196F3")
    india.save!

    gallo = Eatery.new(name: "El Gallo de Oro",
                        location: uc,
                        summary: "Authentic Mexican flavors made with fresh ingredients",
                        color: "#009688")
    gallo.save!

    skibo = Eatery.new(name: "Skibo",
                        location: uc,
                        summary: "Gourmet sandwiches, pizza and soups",
                        color: "#B0BEC5")
    skibo.save!

    entropy = Eatery.new(name: "Entropy",
                        location: uc,
                        summary: "Campus convenience store",
                        color: "#FF9800")
    entropy.save!


    creperie = Eatery.new(name: "Creperie",
                        location: uc,
                        summary: "Freshly prepared entrée and dessert crepes",
                        color: "#A1887F")
    creperie.save!

    # exchange = Eatery.new(name: "The Exchange",
    #                     location: tepper,
    #                     summary: "Made-to-order sandwiches, hot soups and entrées")
    # exchange.save!

    # la_prima = Eatery.new(name: "La Prima",
    #                     location: wean,
    #                     summary: "Espresso, cappuccino and Italian pastries")
    # la_prima.save!

# Open Blocks
    OpenBlocks::GALLO.each_with_index do |daily_block, day|
      throw "Time block syntax error! Expected an even number of open/close times." if daily_block.length.odd?
      daily_block.each_slice(2) do |open_block|
        o = OpenBlock.new
        o.start_at = open_block[0]
        o.end_at = open_block[1]
        o.weekday = day
        o.eatery = gallo
        o.save!
      end
    end

    OpenBlocks::CMC.each_with_index do |daily_block, day|
      throw "Time block syntax error! Expected an even number of open/close times." if daily_block.length.odd?
      daily_block.each_slice(2) do |open_block|
        o = OpenBlock.new
        o.start_at = open_block[0]
        o.end_at = open_block[1]
        o.weekday = day
        o.eatery = cmc
        o.save!
      end
    end

    OpenBlocks::ENTROPY.each_with_index do |daily_block, day|
      throw "Time block syntax error! Expected an even number of open/close times." if daily_block.length.odd?
      daily_block.each_slice(2) do |open_block|
        o = OpenBlock.new
        o.start_at = open_block[0]
        o.end_at = open_block[1]
        o.weekday = day
        o.eatery = entropy
        o.save!
      end
    end

    OpenBlocks::SKIBO.each_with_index do |daily_block, day|
      throw "Time block syntax error! Expected an even number of open/close times." if daily_block.length.odd?
      daily_block.each_slice(2) do |open_block|
        o = OpenBlock.new
        o.start_at = open_block[0]
        o.end_at = open_block[1]
        o.weekday = day
        o.eatery = skibo
        o.save!
      end
    end

    OpenBlocks::CREPERIE.each_with_index do |daily_block, day|
      throw "Time block syntax error! Expected an even number of open/close times." if daily_block.length.odd?
      daily_block.each_slice(2) do |open_block|
        o = OpenBlock.new
        o.start_at = open_block[0]
        o.end_at = open_block[1]
        o.weekday = day
        o.eatery = creperie
        o.save!
      end
    end

    OpenBlocks::INDIA.each_with_index do |daily_block, day|
      throw "Time block syntax error! Expected an even number of open/close times." if daily_block.length.odd?
      daily_block.each_slice(2) do |open_block|
        o = OpenBlock.new
        o.start_at = open_block[0]
        o.end_at = open_block[1]
        o.weekday = day
        o.eatery = india
        o.save!
      end
    end

    OpenBlocks::NAKAMA.each_with_index do |daily_block, day|
      throw "Time block syntax error! Expected an even number of open/close times." if daily_block.length.odd?
      daily_block.each_slice(2) do |open_block|
        o = OpenBlock.new
        o.start_at = open_block[0]
        o.end_at = open_block[1]
        o.weekday = day
        o.eatery = nakama
        o.save!
      end
    end

    OpenBlocks::ASIANA.each_with_index do |daily_block, day|
      throw "Time block syntax error! Expected an even number of open/close times." if daily_block.length.odd?
      daily_block.each_slice(2) do |open_block|
        o = OpenBlock.new
        o.start_at = open_block[0]
        o.end_at = open_block[1]
        o.weekday = day
        o.eatery = asiana
        o.save!
      end
    end

    OpenBlocks::MITCHELLS.each_with_index do |daily_block, day|
      throw "Time block syntax error! Expected an even number of open/close times." if daily_block.length.odd?
      daily_block.each_slice(2) do |open_block|
        o = OpenBlock.new
        o.start_at = open_block[0]
        o.end_at = open_block[1]
        o.weekday = day
        o.eatery = mitchells
        o.save!
      end
    end

    # OpenBlocks::LA_PRIMA.each_with_index do |daily_block, day|
    #   throw "Time block syntax error! Expected an even number of open/close times." if daily_block.length.odd?
    #   daily_block.each_slice(2) do |open_block|
    #     o = OpenBlock.new
    #     o.start_at = open_block[0]
    #     o.end_at = open_block[1]
    #     o.weekday = day
    #     o.eatery = la_prima
    #     o.save!
    #   end
    # end

    # OpenBlocks::EXCHANGE.each_with_index do |daily_block, day|
    #   throw "Time block syntax error! Expected an even number of open/close times." if daily_block.length.odd?
    #   daily_block.each_slice(2) do |open_block|
    #     o = OpenBlock.new
    #     o.start_at = open_block[0]
    #     o.end_at = open_block[1]
    #     o.weekday = day
    #     o.eatery = exchange
    #     o.save!
    #   end
    # end
  end
end
