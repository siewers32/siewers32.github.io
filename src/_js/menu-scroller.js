let menu = document.getElementById('menu');
let menuPanel = document.getElementById('menu-panel');
menu.addEventListener('click', function(e) {
    e.preventDefault();
    menuShow();
});
window.addEventListener('resize', function() {
    if(menuPanel) {
        menuPanel.style.display = 'none';
    }
});


const makeNavLinksSmooth = ( ) => {
    const navLinks = document.querySelectorAll( '.nav-link' );
    for ( let n in navLinks ) {
        console.log(navLinks[0]);
        if ( navLinks.hasOwnProperty( n ) ) {
            navLinks[ n ].addEventListener( 'click', e => {
                e.preventDefault( );
                document.querySelector( navLinks[ n ].hash )
                    .scrollIntoView( {
                        behavior: "smooth"
                    } );
            } );
        }
    }
}

const spyScrolling = ( ) => {
    const sections = document.querySelectorAll( 'h2' );

    window.onscroll = ( ) => {
        const scrollPos = document.documentElement.scrollTop || document.body.scrollTop;
        const logo = document.querySelector('img#logo');
        if(scrollPos > 50) {
            logo.classList.remove( 'standard' );
            logo.classList.add( 'small' );
        } else {
            logo.classList.remove('small');
            logo.classList.add( 'standard' );
        }
        for ( let s in sections ) {
            if (sections.hasOwnProperty(s) && sections[s].offsetTop <= (scrollPos + 150)) {
                // console.log(sections[s].id + ' - ' + (scrollPos + 150) + ' - ' + sections[s].offsetTop);
                const id = sections[s].id;
                for (let a of document.querySelectorAll('aside .active')) {
                    a.classList.remove('active');
                }
                // document.querySelector(`aside#left > div.sections a[href*=${id}]`).classList.add('active');
                document.querySelector(`aside#right > div.sections a[href*=${id}]`).classList.add('active');
            }
        }
    }
}

function menuShow() {
    if(menuPanel.style.display === 'block') {
        menuPanel.style.display = 'none';
    } else {
        menuPanel.style.display = 'block';
    }
}

//makeNavLinksSmooth( );
spyScrolling( );