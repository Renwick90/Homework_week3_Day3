require( 'pg' )


class PetStore
  attr_reader(:id, :name, :artist_id)

  def initialize( options, runner )
    @id = options['id']
    @name = options['name']
    @address = options['address']
    @type = options['type']
    @runner = runner
  end


  def save()
    sql = "INSERT INTO pet_stores (name, pet_id, addess, type) VALUES ('#{@name}', '#{@pet_id}') RETURNING *"
    @runner.run(sql)
  end
 
end