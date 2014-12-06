# To_do

- Associate Properties with landlords, when you create a property you are able to associate a landlord. 

- Associate Tenants with properties, when you create a tenant you are able to associate a property. 

- Associate rent_payments with tenants, when you create a rent_payment you are able to associate a tenant. 


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