

# Landlord
name :string
address :string
email :string
phone :integer
- 
have_many properties 

# Tenant 
name :string
address :string
email :string
phone :integer
status :string passed, current, potential
- 
belong to properties
belongs_to_and_has_many :rents

# Properties
address :string
rent :integer
- 
belong to landlords
have many tenants


# rent
ammount
date
status
ref #
payment method
- 
belongs_to_and_has_many :tenants