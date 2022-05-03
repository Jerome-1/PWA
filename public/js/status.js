document.addEventListener('DOMContentLoaded', init, false);

function init() {
    if (!navigator.onLine) {
        const statusElem = document.querySelector('.page-status')
        statusElem.innerHTML = 'offline'
    };
};

var post =  document.getElementById("post");
post.addEventListener("click", function() {
    var commentBoxValue = document.getElementById("comment-box").value;
    var li = document.createElement("li");
    var text = document.createTextNode(commentBoxValue);
    li.appendChild(text);
    document.getElementById("notordered").appendChild(li);
});