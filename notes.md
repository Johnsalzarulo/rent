# To Do: 

- I need a way to set only the current users data in all of my forms views. I think this will be with scopes. 

- Need to add validations to everything. 

- Build out some type of sub-authentication against "Tenants", they can only view "Issues" and other basic informaiton. These profiles are created when landlords set up a tenant automatically. 

- Need a "show" for my issues page. 

- Need to add a "Notes" for my issues page, this way people can keep track of issues above just "status" as well, this is where I think I will have the text messaging functionality live, possibly as "Notes" against an issue. 

- Need a way to show / hide items based on thier status. For example I need to hide "issues" that are marked as "complete"

- Need to update "status" against tenats and against "properties" to do something helpful. 

- Do I want to try to manage rent? I might just want to remove this functionality alltogether.



- - - - 



@import "bootstrap-sprockets";
@import "bootstrap";


@import url("//fonts.googleapis.com/css?family=Roboto:100,300,400,500");


body,
h1,
h2,
h3,
h4,
h5,
h6,
.h1,
.h2,
.h3,
.h4,
.h5,
.h6 {
    font-family: "Roboto", Helvetica, Arial, sans-serif!important;
    font-weight: 300;
}


#bghouse {
  background-image: url("../assets/house.jpg");
  background-size: 100% ;
}

#bghouse .jumbotron {
  background-color: transparent;
}

#bghouse .well {
  background-color: rgba(255, 255, 255, 1);
}

#bghouse h1,
#bghouse h2,
#bghouse h3,
#bghouse h4 {
  color: white;
}

#bghouse .well h1,
#bghouse .well h2,
#bghouse .well h3,
#bghouse .well h4,
#bghouse .well  h5,
#bghouse .well p {
  color: black;
}


.alert .alert-warning,
.alert .alert-info {
  border-radius: 12px;
  margin: 15px;
}

.message-in {
  background-color: #2ecc71;
  border-radius: 12px;
  color: white;
  margin: 10px;
}

.message-out {
  background-color: #3498db;
    border-radius: 12px;
      color: white;
}


/*THESE ARE FROM THE THEME*/

html {
  font-family: sans-serif;
  -ms-text-size-adjust: 80%;
  -webkit-text-size-adjust: 80%;
}
body {
  margin: 0;
}
