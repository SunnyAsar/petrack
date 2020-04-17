json.partial! 'api/v1/pets/pet', pet: @pet
json.pet_images @pet.pet_images.map{|image| url_for(image)}
