
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/Features/Home_Layout/cubit/states.dart';
import 'package:meal_app/Features/Home_Screen/model/item_data_modell.dart';
import 'package:meal_app/FirebaseHelper.dart';
import 'package:meal_app/constant.dart';
import 'package:meal_app/favorite_model.dart';
import '../../Home_Screen/presentation/views/Home_view_body.dart';
import '../../MenuScreen/presentation/views/MenuViewBody.dart';
import '../../MoreScreen/MoreViewBody.dart';
import '../../OffersScreen/presentation/views/OffersViewBody.dart';
import '../../ProfileScreen/ProfileViewBody.dart';

class HomeCubit extends Cubit<HomeScreenStates> {
  HomeCubit() : super(InitHomeState());
  static HomeCubit get(context) => BlocProvider.of(context);
  FirebaseHelper firebaseHelper =new FirebaseHelper();
  List<Widget> screens = [
    const MenuViewBody(),
    const OffersViewBody(),
    const ProfileViewBody(),
    const MoreViewBody(),
    const HomeViewBody(),
  ];
  int currentIndex = 4;
  List<String> titles = [
    'Menu',
    'Offers',
    'Profile',
    'More',
    'Home',
  ];
  void changeBottomNav(int index, context) {
    currentIndex = index;
    emit(ChangeeNavBottomBarState());
  }


  List<ItemModel> food = [];
  List<ItemModel> fav = [];
  List<ItemModel> dessert = [];
  List<ItemModel> berverages = [];
  List<ItemModel> promotions = [];
  List<ItemModel> offers = [];
  List<ItemModel> items = [];
  List<ItemModel> recentItems = [];

  Future<void> getItems() async {
    items = [];
    food = [];
    fav = [];
    dessert = [];
    berverages = [];
    promotions = [];
    offers = [];
    emit(GetItemsDataLoadingState());
    var value;
    await FirebaseHelper().getCollectionData(coll: 'items').then((val) {
      value = val;
    }).catchError((error) {
      emit(GetItemsDataErrorState());
    });

    value.docs.forEach((element) {
      items.add(ItemModel.fromJson(element.data()));
      if (ItemModel.fromJson(element.data()).discount != 0) {
        offers.add(ItemModel.fromJson(element.data()));
      }
      if (double.parse(ItemModel.fromJson(element.data()).rate) >= 4.5) {
        fav.add(ItemModel.fromJson(element.data()));
      }
      switch (ItemModel.fromJson(element.data()).category) {
        case 'food':
          food.add(ItemModel.fromJson(element.data()));
          break;
        case 'dessert':
          dessert.add(ItemModel.fromJson(element.data()));
          break;
        case 'beverages':
          berverages.add(ItemModel.fromJson(element.data()));
          break;

        default:
          promotions.add(ItemModel.fromJson(element.data()));
      }
    });

    print(items.length);
    emit(GetItemsDataSuccessState());
  }

  Future<void> getFavorites() async {
    favorites = [];
    await FirebaseHelper()
        .getCollectionData(
        coll: 'users', doc: userModel.uId, secCol: 'favorites')
        .then((value) {
      value.docs.forEach((element) {
        favorites.add(FavoriteModel.fromJson(element.data()));
      });
    }).catchError((error) {});
  }

}
