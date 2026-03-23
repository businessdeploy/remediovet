   let tabs = document.querySelectorAll(".tabs li");
    let tabsArray = Array.from(tabs);
    let divs = document.querySelectorAll(".content > div");
    let divsArray = Array.from(divs);

    // console.log(tabsArray);

    tabsArray.forEach((ele) => {
      ele.addEventListener("click", function (e) {
        // console.log(ele);
        tabsArray.forEach((ele) => {
          ele.classList.remove("active");
        });
        e.currentTarget.classList.add("active");
        divsArray.forEach((div) => {
          div.style.display = "none";
        });
        // console.log(e.currentTarget.dataset.cont);
        document.querySelector(e.currentTarget.dataset.cont).style.display = "block";
      });
    });


    function enableRegisterButton() {
        document.getElementById('registerButton').disabled = false;
    }

    // Form submission handler
    document.getElementById('registrationForm').addEventListener('submit', function (event) {
        var recaptchaResponse = grecaptcha.getResponse();
        if (recaptchaResponse.length == 0) {
            event.preventDefault(); // Prevent form submission if reCAPTCHA is not validated
            document.getElementById('recaptcha_error').innerHTML = 'Please complete the reCAPTCHA.';
        }
    });