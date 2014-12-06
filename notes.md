# To_do





### Landlord
- 
have_many properties 

### Tenant 
- 
belong to properties
belongs_to_and_has_many :rents

### Properties
- 
belong to landlords
have many tenants


### rent
- 
belongs_to_and_has_many :tenants