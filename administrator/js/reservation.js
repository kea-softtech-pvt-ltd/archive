
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
                phoneUS: true
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
                phoneUS: "Please enter a valid phone number: (e.g. 19999999999 or 9999999999)"
            },
            "city": {
                required: "Please select city"
            },
			 "address": {
                required: "Please enter address"
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

    // validation on state add or edit
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

    
    }); 