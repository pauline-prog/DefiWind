// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("chartkick")
require("chart.js")



//= require Chart.bundle
//= require chartkick
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import Chartkick from "chartkick"

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});

const search2 = document.getElementById('second')
// const search3 = document.getElementById('third')
const search4 = document.getElementById('fourth')
const search5 = document.getElementById('fifth')
const search6 = document.getElementById('sixth')
const search7 = document.getElementById('seventh')

// search2.addEventListener("click", (event) => {
//   search3.style.display = "block";
// })
// search3.addEventListener("click", (event) => {
//   search4.style.display = "block";
// })
// search4.addEventListener("click", (event) => {
//   search5.style.display = "block";
// })
// search5.addEventListener("click", (event) => {
//   search6.style.display = "block";
// })
// search6.addEventListener("click", (event) => {
//   search7.style.display = "block";
// })

search2.addEventListener("click", (event) => {
  search2.insertAdjacentHTML('afterend', '<input type="text" name="third_query" id="third" placeholder="Nom, Prénom ou n° de dossard" class="input-classement">');
  const search3 = document.getElementById('third');
  search3.addEventListener("click", (event) => {
  	search3.insertAdjacentHTML('afterend', '<input type="text" name="fourth_query" id="fourth" placeholder="Nom, Prénom ou n° de dossard" class="input-classement">')
    const search4 = document.getElementById('fourth');
    search4.addEventListener("click", (event) => {
  	  search4.insertAdjacentHTML('afterend', '<input type="text" name="fifth_query" id="fifth" placeholder="Nom, Prénom ou n° de dossard" class="input-classement">')
      const search5 = document.getElementById('fifth');
  	  search5.addEventListener("click", (event) => {
  	    search5.insertAdjacentHTML('afterend', '<input type="text" name="sixth_query" id="sixth" placeholder="Nom, Prénom ou n° de dossard" class="input-classement">')
        const search6 = document.getElementById('sixth');
        search6.addEventListener("click", (event) => {
  	      search6.insertAdjacentHTML('afterend', '<input type="text" name="seventh_query" id="seventh" placeholder="Nom, Prénom ou n° de dossard" class="input-classement">')
        });
      });
    });
  });
})

// const posts = document.querySelectorAll('.post');
// posts.forEach(post => (
//   post.addEventListener("click", (event) => {
//     const id = event.currentTarget.dataset.id;
//     console.log(id)
//     const data = {state: "like", id: id}
//      $.ajax({
//       url: "/likes",
//       type: "POST",
//       data: data,
//       headers: {
//         'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
//       },
//       dataType: 'json',
//       //data: {foo: 'bar', cat: $(this).data('cat'), id: $(this).data('id')} ,
//       success: function(data) {
//         console.log(data)
//       },
//       error: function(data) {}
//     })
//   })
// ))


