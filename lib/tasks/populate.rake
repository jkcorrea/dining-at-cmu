require File.expand_path('../../open_blocks', __FILE__)

namespace :db do
  desc "Populate database with Eateries and related data"

  task :populate => :environment do
  # Locations
    resnik = Location.new(name: "Resnik")
    resnik.save!

    uc = Location.new(name: "University Center")
    uc.save!

    nsh = Location.new(name: "Newell Simon Hall")
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
                        summary: "Pan Asian Rice & Noodles")
    asiana.save!

    mitchells = Eatery.new(name: "Mitchells",
                        location: nsh,
                        summary: "Soups, pizzas, hot entrées and salad bar")
    mitchells.save!

    nakama = Eatery.new(name: "Nakama Express",
                        location: resnik,
                        summary: "Freshly-made sushi")
    nakama.save!

    cmc = Eatery.new(name: "Resnik Cafe",
                        location: resnik,
                        summary: "Fresh hot breakfast all day")
    cmc.save!

    india = Eatery.new(name: "Taste of India",
                        location: resnik,
                        summary: "Indian Cuisine")
    india.save!

    gallo = Eatery.new(name: "El Gallo de Oro",
                        location: uc,
                        summary: "Authentic Mexican flavors made with fresh ingredients")
    gallo.save!

    skibo = Eatery.new(name: "Skibo",
                        location: uc,
                        summary: "Gourmet sandwiches, pizza and soups")
    skibo.save!

    entropy = Eatery.new(name: "Entropy",
                        location: uc,
                        summary: "Campus convenience store")
    entropy.save!


    creperie = Eatery.new(name: "Creperie",
                        location: uc,
                        summary: "Freshly prepared entrée and dessert crepes")
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
