<!doctype html>
<html>
	<head>
		<meta charset=utf-8>
		<meta name=description content="">
		<meta name=viewport content="width=device-width, initial-scale=1">
		<title>Jquery Comments</title>
		 <!-- CSRF Token -->
		 <meta name="csrf-token" content="{{ csrf_token() }}">
		<!-- Styles -->
                {{ HTML::style(asset('css/jquery-comments.css')) }}
		
                {{ HTML::style(asset('https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css')) }}
				<link href="{{ URL::asset('css/bootstrap.css')}}" rel="stylesheet" type="text/css" media="all" />
				
		<!-- Libraries -->

                 {{ HTML::script(asset('https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.min.js')) }}
                 {{ HTML::script(asset('https://cdnjs.cloudflare.com/ajax/libs/jquery.textcomplete/1.8.0/jquery.textcomplete.js')) }}
				 
				 {{ HTML::script(asset('js/jquery-comments.js')) }}
				 {{ HTML::script(asset('js/jquery.twbsPagination.min.js')) }}

		<style type="text/css">
			body {
				padding: 20px;
				margin: 0px;
				font-size: 14px;
				font-family: "Arial", Georgia, Serif;
			}
		</style>

		<!-- Init jquery-comments -->
		<script type="text/javascript">
		var pageConfig = {
			pageSize : 4,
			pagaIndex :1,
		}
			$(function() {
				var saveComment = function(data) {

					// Convert pings to human readable format
					$(data.pings).each(function(index, id) {
						var user = usersArray.filter(function(user){return user.id == id})[0];
						data.content = data.content.replace('@' + id, '@' + user.fullname);
					});
					return data;
				}
                                
				$('#comments-container').comments({
					profilePictureURL: 'https://viima-app.s3.amazonaws.com/media/user_profiles/user-icon.png',
					currentUserId: 1,
					roundProfilePictures: true,
					textareaRows: 1,
					enableAttachments: true,
					enableHashtags: true,
					enablePinging: true,
					// getUsers: function(success, error) {
					// 	$.ajax({
					// 		type: 'get',
					// 		url: '/api/index/',
					// 		success: function(data) {
					// 			console.log('dt',data.commentsArray)
					// 			success(data.commentsArray)
					// 		},
					// 		error: error
					// 	});
					// },
					getComments: function(success, error) {
						//ajax sẽ gọi url api/index của api.php
						$.ajax({
							type: 'get',
							url: '/api/comments/',
							data: {
								page:pageConfig.pagaIndex,
								pageSize:pageConfig.pageSize
							},
							success: function(data) {
								success(data.commentsArray);
								var totalPage = Math.ceil(data.totalRow/3);
								$('#pagination').twbsPagination({
									totalPages: totalPage,
									visiblePages: 10,
									onPageClick: function (event, page) {
									pageConfig.pagaIndex = page;
									setTimeout(() => {
										getComments(success, error);
										
									}, 2000);
												
											}
								});
									
								},
							error: error
						});
					},
					postComment: function(commentJSON, success, error) {
						$.ajax({
							type: 'post',
							url: '/api/comments/save/',
							data: commentJSON,
							success: function(data) {
								success(data.comment)
							},
							error: error
						});
					},
					putComment: function(commentJSON, success, error) {
						$.ajax({
							type: 'put',
							url: '/api/comments/edit/' + commentJSON.id,
							data: commentJSON,
							success: function(data) {
								success(data.comment)
							},
							error: error
						});
					},
					deleteComment: function(commentJSON, success, error) {
						$.ajax({
							type: 'delete',
							url: '/api/comments/delete/' + commentJSON.id,
							success: success,
							error: error
						});
					},
				});
			});
		</script>

	</head>
	<body>
		<div id="comments-container"></div>
		<div id="pagination" class="pagination"></div>
	</body>
