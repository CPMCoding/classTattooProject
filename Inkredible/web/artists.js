// begin fade-in

document.addEventListener('DOMContentLoaded', function() {
    const fadeIn = document.querySelector('.fade-in');

    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                fadeIn.classList.add('visible');
            }
        });
    });

    observer.observe(fadeIn);
});

//end fade-in