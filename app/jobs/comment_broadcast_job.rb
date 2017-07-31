class CommentBroadcastJob < ApplicationJob
  queue_as :default
  
  def perform(comment)
    ActionCable.sever.breadcast "blogs_#{comment.blog.id}_channel", comment: render_comment(comment)
  end
  
  private
  
  def render_comment(comment)
    CommentsContrller.render partial: 'comments/comment', locals: {comment: comment }
  end
end