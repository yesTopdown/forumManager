
// nwesTap切换
let newsTaps = document.getElementsByClassName('newsList-tab')[0].getElementsByTagName('button');
let newsContent = document.getElementsByClassName('newsList-content');

for(let i = 0; i < newsTaps.length; i++){
  newsTaps[i].onclick = function(){
    for(let i = 0; i < newsTaps.length; i++){
      newsTaps[i].index = i;
      newsTaps[i].className = '';
      newsContent[i].className = 'newsList-content hide'
    }
    this.className = 'newsBtn-current';
    newsContent[this.index].className = 'newsList-content'
  }
}

