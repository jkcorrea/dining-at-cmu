require File.expand_path('../../open_blocks', __FILE__)

namespace :db do
  desc "Populate database with Eateries and related data"

  task :populate => :environment do
    # Locations
    resnik = Location.new(name: "Resnik")
    resnik.save!

    wean = Location.new(name: "Wean")
    wean.save!

    uc = Location.new(name: "University Center")
    uc.save!

    tepper = Location.new(name: "Tepper")
    tepper.save!

    # Eateries
    gallo = Eatery.new(name: "El Gallo de Oro", location: uc)
    gallo.save!

    cmc = Eatery.new(name: "Carnegie Mellon Cafe", location: resnik)
    cmc.save!

    india = Eatery.new(name: "Taste of India", location: resnik)
    india.save!

    exchange = Eatery.new(name: "The Exchange", location: tepper)
    exchange.save!

    entropy = Eatery.new(name: "Entropy", location: uc)
    entropy.save!

    skibo = Eatery.new(name: "Skibo Cafe", location: uc)
    skibo.save!

    creperie = Eatery.new(name: "Creperie", location: uc)
    creperie.save!

    la_prima = Eatery.new(name: "La Prima", location: wean)
    la_prima.save!

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

    OpenBlocks::EXCHANGE.each_with_index do |daily_block, day|
      throw "Time block syntax error! Expected an even number of open/close times." if daily_block.length.odd?
      daily_block.each_slice(2) do |open_block|
        o = OpenBlock.new
        o.start_at = open_block[0]
        o.end_at = open_block[1]
        o.weekday = day
        o.eatery = exchange
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

    OpenBlocks::LA_PRIMA.each_with_index do |daily_block, day|
      throw "Time block syntax error! Expected an even number of open/close times." if daily_block.length.odd?
      daily_block.each_slice(2) do |open_block|
        o = OpenBlock.new
        o.start_at = open_block[0]
        o.end_at = open_block[1]
        o.weekday = day
        o.eatery = la_prima
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
  end
end
