const search = () => {
  const search2 = document.getElementById('second')
  if (search2) {
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
  }
}

export { search }