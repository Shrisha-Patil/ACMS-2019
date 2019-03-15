$(document).ready(()=>{
  $('#searchForm').on('submit',(e) => {
    let searchText = $('#searchText').val();
    getEvents(searchText);
    e.preventDefault();
  });
});

function getEvents(searchText){
  //axios.get('url?s='+searchText)
  .then((response) => {
    console.log(response);
    let events = response.data.Search;
    let output = '';
    $.each(events, (index, ) => {
      output+=`
        <div class = "col-md-3">
              <div class = "well text-center:>
               <img src="${movie.Post}">
               <h5>${movie.Title}</h5>
               <a onclick="movieSelected(${movie.})"
              </div>
        </div>

      `;
    });
  })
  .catch((err) => {
    console.log(err);
  });
}
