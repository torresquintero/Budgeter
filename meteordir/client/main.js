import { Template } from 'meteor/templating';
import { ReactiveVar } from 'meteor/reactive-var';

import './main.html';

function toggleFeedSelectors() {
  $(".feed-selector").on("tap",function(){
    if ($(this).hasClass("selected")) {
      $(this).removeClass("selected");
      $(this).css("background-color","transparent");
    }
    else {
      $(this).addClass("selected");
      $(this).css("background-color","rgba(153,0,0, 0.8)"); /* #990000 */
    }
  });
}

$(document).on("pagecreate","#pageone",function(){
  toggleFeedSelectors();
});
