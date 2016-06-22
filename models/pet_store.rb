require( 'pg' )


class PetStore
  attr_reader(:id, :name, :address ,:type)

  def initialize( options, runner )
    @id = options['id'].to_i
    @name = options['name']
    @address = options['address']
    @type = options['type']
    @runner = runner
  end


  def save()
    sql = "INSERT INTO pet_stores (name, address, type) VALUES ('#{@name}', '#{address}', '#{@type}') RETURNING *"
   pet_store_data = @runner.run(sql)
    @id = pet_store_data.first['id'].to_i
  end

  # def pet_stores

  #   sql = "SELECT * FROM pet_stores WHERE id = #{@pet_store_id}"
  #pet_info = @runner.run(sql)
  #return PetStore.new(pet_info.first, @runner)

  # end
 
end