var sp = document.querySelector('.search-open');
            var searchbar = document.querySelector('.search-inline');
            var shclose = document.querySelector('.search-close');
            var shactiv = document.querySelector('.searching');
            function changeClass() {
                searchbar.classList.add('search-visible');
                shactiv.classList.add('searching-visible');
            }
            function closesearch() {
                searchbar.classList.remove('search-visible');
              shactiv.classList.remove('searching-visible');
            }
            sp.addEventListener('click', changeClass);
            shclose.addEventListener('click', closesearch);