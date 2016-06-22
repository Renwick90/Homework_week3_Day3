require_relative('./models/pet')
require_relative('./models/pet_store')
require_relative('./db/sql_runner')

require('pry-byebug')

runner = SqlRunner.new( {dbname: 'petsrus', host: 'localhost'}, )


# pet2 = Pet.new({'name' => "Sedrick", 'type' => 'snake'}, pet_store.id, runner)
pet_store = PetStore.new({'name' => "Jimmys Snakes", 'address' => "1 Rumba Street", 'type' => "creepy"}, runner)
pet_store.save()

pet3 = Pet.new({'name' => "Bruno", 'type ' => 'dog', 'pet_store_id' => pet_store.id}, runner)


pet3.save()


# binding.pry



