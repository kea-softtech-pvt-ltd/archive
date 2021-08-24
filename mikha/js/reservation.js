

jQuery(document).ready(function () {
       // validation on signup
       jQuery("#frmLogin").validate({
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
            
        }
    });

    //end validation

    
    }); 