require( 'pg' )
require('pry-byebug')
class Pet

  attr_reader(:name, :type, :id)
  def initialize( options, runner )
    @name = options['name']
    @type = options['type']
    @id = options['id'].to_i
    
    @runner = runner
  end

  def save()
    sql = "INSERT INTO pets (name, type) VALUES ('#{@name}', '#{type}') RETURNING *"
    pet_data = @runner.run(sql)
    @id = pet_data.first['id'].to_i
  end

end