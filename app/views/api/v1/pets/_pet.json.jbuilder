json.id pet.id
json.name pet.name
json.category_id pet.category.id
json.category pet.category.name
json.location pet.location
json.details pet.details
json.pet_thumbnail url_for(pet.pet_thumbnail) unless pet.pet_thumbnail.nil?
json.amount pet.amount
json.quantity pet.quantity
json.created_at pet.created_at