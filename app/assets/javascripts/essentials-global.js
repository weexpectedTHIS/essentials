$(document).ready(function(){
  // GLOBAL PREVENTION OF HREF PROPOGATION FOR JAVASCRIPT LINKS
  $(document).on('click', 'a[href^="#"], a[data-remote="true"]', function(e){ e.preventDefault(); });
});
