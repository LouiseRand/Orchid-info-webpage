var home = {
    init: function() {
        new Glide('.glide',
                {
                    type:'carousel',
                    perView: 4,
                    breakpoints: {
                        1200: {
                            perView: 4
                        },
                        992: {
                            perView: 3
                        },
                        768: {
                            perView: 2               
                        },
                        576: {
                            perView: 1
                        }
                    }
                }
                ).mount();

                var acc = document.getElementsByClassName("accordion");
                var i;
            
                    for (i = 0; i < acc.length; i++) {
                        acc[i].addEventListener("click", function() {
                            this.classList.toggle("active");
                            var panel = this.nextElementSibling;
                            if (panel.style.display === "block") {
                                panel.style.display = "none";
                            } else {
                                panel.style.display = "block";
                            }
                        });
                    }
    }   
};
