
$().ready(function () {

    //Staff Form Validation
    $("#registration").validate({
        rules: {
            "name": {
                required: true,
            },
            "partner_name": {
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
            "pan_number": {
                required: true,
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
            "partner_name": {
                required: "Please enter partner name."
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
            "pan_number": {
                required: "Please enter pan number"
            },
            "city": {
                required: "Please select city"
            },
			 "address": {
                required: "Please enter address"
            },
            "state": {
                required: "Please enter state"
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

    
    }); 