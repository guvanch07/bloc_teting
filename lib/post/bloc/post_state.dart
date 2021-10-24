part of 'post_bloc.dart';

enum PostStatus{ initial,success,failure}

abstract class PostState extends Equatable {
  const PostState(this.status = PostStatus.initial, this.posts = <Post>[], this.hasReachedMax = false, {

  });

  final PostStatus status;
  final List<Post> posts;
  final bool hasReachedMax;

  PostState copyWith({
    PostStatus? status,
    List<Post>? posts,
    bool? hasReachedMax,
  }){
    return PostState(
      status: status ?? this.status,
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax

    )
  }
  
  @override
  List<Object> get props => [];
}

class PostInitial extends PostState {}
