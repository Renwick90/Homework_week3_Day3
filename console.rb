require_relative('./models/pet')
require_relative('./models/pet_store')
require_relative('./db/sql_runner')

require('pry-byebug')

runner = SqlRunner.new( {dbname: 'petsrus', host: 'localhost'}, )

pet = Pet.new({'name' => "Bruno", 'type ' => 'dog'}, runner)
pet2 = Pet.new({'name' => "Sedrick", 'type' => 'snake'}, runner)
binding.pry
pet.save()
pet2.save()

# pet_store1 = Pet_Store.new({'name' => "Jimmy's Snakes", 'address' => '1 Rumba Street', 'type' => 'creepy'}, runner)

# pet_store1.save()




