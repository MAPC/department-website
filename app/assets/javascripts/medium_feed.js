google.load("feeds", "1");
function initialize() {
    var feed = new google.feeds.Feed("https://medium.com/feed/@ade3"); // replace @ade3 with your username
    feed.setNumEntries(10);
    feed.load(function(result) {
        if (!result.error) {
            var container = document.getElementById("feed");
            for (var i = 0; i < result.feed.entries.length; i++) {
                var entry = result.feed.entries[i];
                var title = entry.title;
                trimmedTitle = title.split('" in '); // this removes Medium's publication name
                trimmedTitle = trimmedTitle[0];
                if (trimmedTitle.substring(0, 1) == '"') {
                    trimmedTitle = trimmedTitle.substring(1); // this removes the first character if it is a double quote which happens if the post is in a publication
                }
                var content = entry.content;
                var adjustedContent = content.replace("Continue reading on Medium", "Read Story");
                image = content.split('<img src="');
                image = image[1];
                if (image) {
                    image = image.split('" width="');
                    imagePath = image[0];
                    // To show the use the post's image you could add this below <img class="show" src='"+imagePath+"'>
                    var blogPost = "<h2><a href='" + entry.link + "'>" + trimmedTitle + "</a></h2>" + adjustedContent + "<hr />";
                    $('#feed').append(blogPost);
                }
            }
        }
    });
}
google.setOnLoadCallback(initialize);
