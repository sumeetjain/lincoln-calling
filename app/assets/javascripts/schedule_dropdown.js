
window.addEventListener("load", function(){
  if (document.getElementById('day_picker_box"') != undefined || document.getElementById('day_picker_box"') != null) {
    //a drop down of the festival days on the schedule view
    var other_days = document.getElementById("other_days");
    var current_day = document.getElementById("current_day");
    var thursday_shows = document.getElementById("thursday_shows");
    var friday_shows = document.getElementById("friday_shows");

    $(".day_picker_box").on('click', function(){

      other_days.style.display = "block";
    });

    $(".thurs").on('click', function(){
      alert(event.target.innerHTML);
      current_day.innerHTML = event.target.innerHTML
      other_days.style.display = "none";
      thursday_shows.style.display = "block";
      friday_shows.style.display = "none";
    });

    // thurs.addEventListener("click", function(){
    //   alert(event.target.innerHTML);
    //   current_day.innerHTML = event.target.innerHTML
    //   other_days.style.display = "none";
    //   thursday_shows.style.display = "block";
    //   friday_shows.style.display = "none";
    // });

    $(".fri").on('click', function(){
      current_day.innerHTML = event.target.innerHTML
      other_days.style.display = "none";
      thursday_shows.style.display = "none";
      friday_shows.style.display = "block";
    });

    $(".sat").on('click', function(){
      current_day.innerHTML = event.target.innerHTML
      other_days.style.display = "none";
    });
   
    // fri.addEventListener("click", function(){
    //   current_day.innerHTML = event.target.innerHTML
    //   other_days.style.display = "none";
    //   thursday_shows.style.display = "none";
    //   friday_shows.style.display = "block";
    // });

    // sat.addEventListener("click", function(){
    //   current_day.innerHTML = event.target.innerHTML
    //   other_days.style.display = "none";
    // });
  
  };
});


       