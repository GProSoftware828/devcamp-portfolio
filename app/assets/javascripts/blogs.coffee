jQuery(document)on 'turbolinks:load', ->
  comments = $('#comments')
  if comments.length  > 0
    App.global_chat = App.cable.subscriptions.create {
      channel: "BlogChannel"
      blog_id: comments.data('blog-id') 
    }
    connected= ->
    disconnected= ->
    received: (data) ->
      comments.append data['comment']
    send_comment: (comment, blog_id) ->
    #@perform is a method we define in our jobs file
      @perform 'send_comment', comment: comment, blog_id: blog_id
  $('#new_comment').submit (e) ->
    $this = $(this)
    textarea = $this.find('#comment_content')
    if $.trim(textarea.val()).length > 1
    #using CoffeeScript below is passing it in without further syntax:
      App.global_chat.send_comment textarea.val(),
      comments.data('blog-id')
      textarea.val('')
    e.preventDefault()
    return false