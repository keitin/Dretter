window.addEventListener("load", function() {
  $(".edit-group-box li").on("click", function() {
    $('#new-group-modal').modal('hide');
    console.log("hogehogehoeg")
  });

  $(function(){
    setInterval( function(){
      // alert("Hello World");
      $.ajax({
        url: "/",
        type: "GET",
        dataType: "script",
        success: function(data){
          console.log("リロードしたよ");
        },
        error: function(xhr, status, error){
          console.log(xhr.status, status, error.toString());
        }
      });
    }, 1000);
  });

});