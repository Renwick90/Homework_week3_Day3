require( 'pg' )
require('pry-byebug')
class Pet

  attr_reader(:name, :type, :id, :pet_store_id)
  def initialize( options, runner )
    @name = options['name']
    @type = options['type']
    @id = options['id'].to_i
    @pet_store_id = options['pet_store_id'].to_i

    @runner = runner
  end


  def save()
    sql = "INSERT INTO pets (name, type, pet_store_id) VALUES ('#{@name}', '#{@type}', '#{@pet_store_id}') RETURNING *"
    pet_data = @runner.run(sql)
    @id = pet_data.first['id'].to_i
  end

end