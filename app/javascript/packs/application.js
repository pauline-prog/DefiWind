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


//= require chartkick
//= require Chart.bundle
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

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});



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


