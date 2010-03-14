$(function() {
  $(".pagination a").live("click",function() {
	$.get(this.href, null, null, "script");
	return false;
  });
});

jQeury.ajaxSetup({
   'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
});