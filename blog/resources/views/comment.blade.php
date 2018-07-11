<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script src='jquery.js' type='text/javascript'/></script>
<script type='text/javascript'>
//<![CDATA[
    $(document).ready(function(){

    //how much items per page to show
    var show_per_page = 5;
    //getting the amount of elements inside content div
    var number_of_items = $('#content').children().size();
    //calculate the number of pages we are going to have
    var number_of_pages = Math.ceil(number_of_items/show_per_page);

    //set the value of our hidden input fields
    $('#current_page').val(0);
    $('#show_per_page').val(show_per_page);

    //now when we got all we need for the navigation let's make it '

    /*
    what are we going to have in the navigation?
        - link to previous page
        - links to specific pages
        - link to next page
    */
    var navigation_html = '<a class="previous_link" href="javascript:previous();">«</a>';

    var current_link = 0;
    while (number_of_pages > current_link){
        navigation_html += '<a class="page_link" href="javascript:go_to_page(' + current_link +')" longdesc="' + current_link +'">'+ (current_link + 1) +'</a>';
        current_link++;
    }

    navigation_html += '<a class="next_link" href="javascript:next();">»</a>';

    $('#page_navigation').html(navigation_html);

    //add active_page class to the first page link
    $('#page_navigation .page_link:first').addClass('active_page');

    //hide all the elements inside content div
    $('#content').children().css('display', 'none');

    //and show the first n (show_per_page) elements
    $('#content').children().slice(0, show_per_page).css('display', 'block');

});

function previous(){

    new_page = parseInt($('#current_page').val()) - 1;
    //if there is an item before the current active link run the function
    if($('.active_page').prev('.page_link').length==true){
        go_to_page(new_page);
    }

}

function next(){
    new_page = parseInt($('#current_page').val()) + 1;
    //if there is an item after the current active link run the function
    if($('.active_page').next('.page_link').length==true){
        go_to_page(new_page);
    }

}
function go_to_page(page_num){
    //get the number of items shown per page
    var show_per_page = parseInt($('#show_per_page').val());

    //get the element number where to start the slice from
    start_from = page_num * show_per_page;

    //get the element number where to end the slice
    end_on = start_from + show_per_page;

    //hide all children elements of content div, get specific items and show them
    $('#content').children().css('display', 'none').slice(start_from, end_on).css('display', 'block');

    /*get the page link that has longdesc attribute of the current page and add active_page class to it
    and remove that class from previously active page link*/
    $('.page_link[longdesc=' + page_num +']').addClass('active_page').siblings('.active_page').removeClass('active_page');

    //update the current page input field
    $('#current_page').val(page_num);
}
//]]>
</script>
<style type='text/css'>
#page_navigation a{
    padding:3px;
    border:1px solid gray;
    margin:2px;
    color:black;
    text-decoration:none
}
#page_navigation a:hover{background:#ccc;}
.active_page{
    background:#555;
    color:red !important;
}
</style>
</head>

<body>
<input type='hidden' id='current_page' />
<input type='hidden' id='show_per_page' />
<div id='content'>
      @include('index');
    </div>
    <div id="page_navigation"></div>
</body>
</html>