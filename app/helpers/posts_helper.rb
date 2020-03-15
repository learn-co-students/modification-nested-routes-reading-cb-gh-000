module PostsHelper
  def author_id_field(post_form)
    if post_form.object.author.nil?
      post_form.collection_select :author_id, Author.all, :id, :name
    else
      post_form.hidden_field :author_id
    end
  end
end
