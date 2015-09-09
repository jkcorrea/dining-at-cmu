require File.expand_path('../../open_blocks', __FILE__)

namespace :db do
  desc "Populate database with Eateries and related data"

  task :populate => :environment do
    # # Locations
    # resnik = Location.new(name: "Resnik")
    # resnik.save!

    # wean = Location.new(name: "Wean")
    # wean.save!

    # uc = Location.new(name: "University Center")
    # uc.save!

    # tepper = Location.new(name: "Tepper")
    # tepper.save!

    # # Eateries
    # gallo = Eatery.new(name: "El Gallo de Oro", location: uc)
    # gallo.save!

    # cmc = Eatery.new(name: "Carnegie Mellon Cafe", location: resnik)
    # cmc.save!

    # india = Eatery.new(name: "Taste of India", location: resnik)
    # india.save!

    # exchange = Eatery.new(name: "The Exchange", location: tepper)
    # exchange.save!

    # entropy = Eatery.new(name: "Entropy", location: uc)
    # entropy.save!

    # skibo = Eatery.new(name: "Skibo Cafe", location: uc)
    # skibo.save!

    # creperie = Eatery.new(name: "Creperie", location: uc)
    # creperie.save!

    # la_prima = Eatery.new(name: "La Prima", location: wean)
    # la_prima.save!

    # Open Blocks
    puts OpenBlocks::GALLO
  end
end
