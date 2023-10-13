class UpdateStoryModel {
  final String imagePath;
  final String title;
  final bool itBeenViewed;

  UpdateStoryModel(
      {required this.imagePath,
      required this.title,
      required this.itBeenViewed});

  static List<UpdateStoryModel> getStories() {
    List<UpdateStoryModel> storyList = [];

    storyList.add(
      UpdateStoryModel(
        imagePath: 'assets/images/avatar2.jpg',
        title: 'My Life',
        itBeenViewed: false,
      ),
    );
    storyList.add(
      UpdateStoryModel(
        imagePath: 'assets/images/avatar3.jpg',
        title: 'Adam Brooks',
        itBeenViewed: false,
      ),
    );
    storyList.add(
      UpdateStoryModel(
        imagePath: 'assets/images/avatar4.jpg',
        title: 'Larry',
        itBeenViewed: true,
      ),
    );
    storyList.add(
      UpdateStoryModel(
        imagePath: 'assets/images/avatar5.jpg',
        title: 'Kızım',
        itBeenViewed: true,
      ),
    );
    storyList.add(
      UpdateStoryModel(
        imagePath: 'assets/images/avatar6.jpg',
        title: 'Kuzen',
        itBeenViewed: true,
      ),
    );
    storyList.add(
      UpdateStoryModel(
        imagePath: 'assets/images/avatar6.jpg',
        title: 'Kuzen',
        itBeenViewed: true,
      ),
    );
    return storyList;
  }
}
