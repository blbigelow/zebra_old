jQuery.ajaxSetup({ 
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
});

jQuery.fn.submitWithAjax = function() {
  this.submit(function() {
    $.post(this.action, $(this).serialize(), null, "script");
    return false;
  })
  return this;
};

$(document).ready( function(){
	$("#new_blog_comment").submit(function() {
	    $.post($(this).attr('action') + '.js', $(this).serializeArray(), null, 'script');
	    return false;
	 });
	$("#new_discussion_comment").submitWithAjax();
});