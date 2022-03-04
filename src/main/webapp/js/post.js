let button = document.getElementsByClassName("comments-submit disable")[0];
let like_btn = document.getElementsByClassName("likes")[0];
let items = document.getElementsByClassName("comment-item");
let comment_btns = document.getElementsByClassName("comment-btn");

function changeButton() {
  button.className = "comments-submit";
}

function changeLike() {
  if (like_btn.className == "likes") {
    like_btn.className = like_btn + " active";
  }
  else {
    like_btn.className = "likes";
  }
}

for (let i = 0; i < items.length; i++) {
  items[i].onmouseenter = function () {
    this.children[2].className = "comment-footer";
  }
  items[i].onmouseleave = function () {
    this.children[2].className = "comment-footer hide";
    this.children[2].children[1].className = "comments-edit hide";
  }
}

for (let i = 0; i < comment_btns.length; i++) {
  comment_btns[i].onclick = function () {
    this.parentElement.children[1].className = "comments-edit";
  }
}