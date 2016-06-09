$.getJSON("/blogfeed", function(data) {
  var container = document.getElementById("feed");
  console.log(data);
  for (var i = 0; i < data.entries.length; i++) {
    var entry = data.entries[i];
    var title = entry[0][1];
    var date = moment(Date.parse(entry[5][1])).format("MMMM Do YYYY");
    console.log(date);
    trimmedTitle = title.split('" in '); // this removes Medium's publication name
    trimmedTitle = trimmedTitle[0];
    if (trimmedTitle.substring(0, 1) == '"') {
        trimmedTitle = trimmedTitle.substring(1); // this removes the first character if it is a double quote which happens if the post is in a publication
    }
    var content = entry[1][1];
    var adjustedContent = content.replace("Continue reading on Medium", "Read Story").replace(/<\/?img[^>]*>/g,"");
    var blogPost = "<p class='post-data'><time>" + date + "</time></p><div class='post-excerpt'><h3><a href='" + entry[2][1] + "'>" + trimmedTitle + "</a></h3>" + adjustedContent + "<hr /></div>";
    var asideLi = "<li><a href='" + entry[2][1] + "'>" + trimmedTitle + "</a></li>"
    if (i < 3) {
      $('#feed').append(blogPost);  
    } else {
      $('#feed-aside').append(asideLi);
    }
  }
});

$('#loadingDiv')
    .hide()  // Hide it initially
    .ajaxStart(function() {
        $(this).show();
    })
    .ajaxStop(function() {
        $(this).hide();
    })
;
