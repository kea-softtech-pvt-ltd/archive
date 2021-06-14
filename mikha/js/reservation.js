
$().ready(function () {

    //Staff Form Validation
    $("#registration").validate({
        rules: {
            "name": {
                required: true,
            },
            "email": {
                required: true,
                email: true,
            },           
            "contact_number": {
                required: true,
                minlength: 10,
                maxlength: 10,
              //  phoneUS: true
            },
            "city": {
                required: true,
            },
			
            "address": {
                required: true,
            },
             "state": {
                required: true,
            },
            "register_number": {
                required: true,
            },
            "zipcode": {
                required: true,
            }
        },
        messages: {
            "name": {
                required: "Please enter builder name."
            },
            "email": {
                required: "Please enter builder email",
                email: "Your email address must be in the format of name@domain.com",
                remote: 'Email already in used. Log in to builder existing account.'
            },
            "contact_number": {
                required: "Please enter phone number",
               // phoneUS: "Please enter a valid phone number: (e.g. 19999999999 or 9999999999)"
            },
            "city": {
                required: "Please select city"
            },
			 "address": {
                required: "Please enter address"
            },
            "register_number": {
                required: "Please enter register number"
            },
             "state": {
                required: "Please select state"
            },
            "zipcode": {
                required: "Please enter zipcode"
            }
        },
    });



    // validation on aminites
    $("#registration1").validate({
        rules: {
            "name": {
                required: true,
            }
        },
        messages: {
            "name": {
                required: "Please Amenities name."
            }
        },
    });

    //end validation
    
    // validation on city add or edit
     $("#addcitys").validate({
        rules: {
            "name": {
                required: true,
            },
            "state": {
                required: true,
            }
        },
        messages: {
            "name": {
                required: "Please enter city name."
            },
            "state": {
                required: "Please select state."
            }
        },
    });

    //end validation

    // validation on state add or edit
     $("#addStates").validate({
        rules: {
            "name": {
                required: true,
            },
            "country": {
                required: true,
            }
        },
        messages: {
            "name": {
                required: "Please enter state name."
            },
            "country": {
                required: "Please select country."
            }
        },
    });

    //end validation

    // validation on state add or edit
     $("#addStates").validate({
        rules: {
            "name": {
                required: true,
            },
            "country": {
                required: true,
            }
        },
        messages: {
            "name": {
                required: "Please enter state name."
            },
            "country": {
                required: "Please select country."
            }
        },
    });

    //end validation

    // validation on country add or edit
    $("#addCountry").validate({
        rules: {
            "name": {
                required: true,
            }
        },
        messages: {
            "name": {
                required: "Please enter country name."
            }
        },
    });

    //end validation

     // validation on neighbourhoods add or edit
     $("#neighbourhoodsAdd").validate({
        rules: {
            "name": {
                required: true,
            },
            "geolocations": {
                required: true,
            }
        },
        messages: {
            "name": {
                required: "Please enter neighbourhood name."
            },
            "geolocations": {
                required: "Please enter geolocations name."
            }
            
        },
    });

    //end validation

     // validation on wing add or edit
     $("#wingAdd").validate({
        rules: {
            "name": {
                required: true,
            }
        },
        messages: {
            "name": {
                required: "Please enter wing name."
            }
            
        },
    });

    //end validation

     // validation on banner add or edit
     $("#bannerAdd").validate({
        rules: {
            "title": {
                required: true,
            }
        },
        messages: {
            "title": {
                required: "Please enter title."
            }
            
        },
    });

    //end validation

    
     // validation on team add 
     $("#teamAdd").validate({
        rules: {
            "name": {
                required: true,
            },
            "title": {
                required: true,
            },
            "description": {
                required: true,
            },
            "image": {
                required: true,
            }
        },
        messages: {
            "name": {
                required: "Please enter name."
            },
            "title": {
                required: "Please enter title."
            },
            "description": {
                required: "Please enter description."
            },
            "image": {
                required: "Please select image."
            }
            
        },
    });

    //end validation

    // validation on team edit
      $("#teamEdit").validate({
        rules: {
            "name": {
                required: true,
            },
            "title": {
                required: true,
            },
            "description": {
                required: true,
            }
        },
        messages: {
            "name": {
                required: "Please enter name."
            },
            "title": {
                required: "Please enter title."
            },
            "description": {
                required: "Please enter description."
            }
            
        },
    });

    //end validation

     // validation on Agent Add
     $("#agentAdd").validate({
        rules: {
            "name": {
                required: true,
            },
            "email": {
                required: true,
            },
            "description": {
                required: true,
            },
            "phone": {
                required: true,
            },
            "office_phone": {
                required: true,
            },
            "fax": {
                required: true,
            },
            "image": {
                required: true,
            }
        },
        messages: {
            "name": {
                required: "Please enter name."
            },
            "email": {
                required: "Please enter email."
            },
            "description": {
                required: "Please enter description."
            },
            "phone": {
                required: "Please enter phone no."
            },
            "office_phone": {
                required: "Please enter office phone no."
            },
            "fax": {
                required: "Please enter fax no."
            },
            "image": {
                required: "Please select image."
            }
            
        },
    });

    //end validation

    // validation on Agent Edit
    $("#agentEdit").validate({
        rules: {
            "name": {
                required: true,
            },
            "email": {
                required: true,
            },
            "description": {
                required: true,
            },
            "phone": {
                required: true,
            },
            "office_phone": {
                required: true,
            },
            "fax": {
                required: true,
            }
        },
        messages: {
            "name": {
                required: "Please enter name."
            },
            "email": {
                required: "Please enter email."
            },
            "description": {
                required: "Please enter description."
            },
            "phone": {
                required: "Please enter phone no."
            },
            "office_phone": {
                required: "Please enter office phone no."
            },
            "fax": {
                required: "Please enter fax no."
            }
            
        },
    });

    //end validation


       // validation on signup
       $("#signin").validate({
        rules: {
            "email": {
                required: true,
            },
            "password": {
                required: true,
            }
        },
        messages: {
            "email": {
                required: "Please enter email."
            },
            "password": {
                required: "Please enter password."
            }
            
        },
    });

    //end validation

    
    }); 