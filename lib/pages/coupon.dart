import 'package:click_yab/component/device_sizes.dart';
import 'package:click_yab/models/coupon_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CouponPage extends StatefulWidget {
  @override
  _CouponPageState createState() => _CouponPageState();
}

class _CouponPageState extends State<CouponPage> {
  DeviceSize _size;
  List<CouponModel> _coupons = List();

  @override
  void initState() {
    super.initState();
    _coupons.add(CouponModel('دیجی‌کالا', 'فروشگاه جامع اینترنتی', 'asset/images/digikala.png'));
    _coupons.add(CouponModel('تپ‌سی', 'تاکسی اینترنتی', 'asset/images/tap_c.png'));
    _coupons.add(CouponModel('فیلیمو', 'تلویزیون اینترنتی', 'asset/images/philimo.png'));
    _coupons.add(CouponModel('زولا', 'سامانه انتقال پول با تلفن همراه', 'asset/images/zula.png'));
    _coupons.add(CouponModel('طاقچه', 'کتابخانه اینترنتی فارسی', 'asset/images/daghche.png'));
    _coupons.add(CouponModel('نوار', 'آرشیو کتاب صوتی', 'asset/images/navar.png'));
    _coupons.add(CouponModel('پلاک', 'خدمات اینترنتی', 'asset/images/pelak.png'));
    _coupons.add(CouponModel('پلاک', 'خدمات اینترنتی', 'asset/images/test.png'));
    _coupons.add(CouponModel('پلاک', 'خدمات اینترنتی', 'asset/images/test.png'));
    _coupons.add(CouponModel('پلاک', 'خدمات اینترنتی', 'asset/images/test.png'));
  }

  @override
  Widget build(BuildContext context) {
    _size = DeviceSize(context);
    return SafeArea(
      child: Column(
        children: <Widget>[
          _appBar(),
          Expanded(
            child: _list(),
          ),
        ],
      ),
    );
  }

  _appBar() => Container(
        padding: EdgeInsets.only(
          left: 32,
          right: 32,
          top: 16,
          bottom: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'کوپن‌خرید',
              style: TextStyle(
                fontSize: _size.width / 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: <Widget>[
                Text(
                  '722',
                  style: TextStyle(
                    fontSize: _size.width / 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: SvgPicture.asset(
                    'asset/icons/e.svg',
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  _list() => Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: ListView.separated(
          itemBuilder: _itemOfList,
          separatorBuilder: (context, index) => Container(
            padding: EdgeInsets.only(
              left: _size.width / 20,
              right: _size.width / 20,
            ),
            child: Divider(
              height: 0.5,
              color: Colors.grey,
            ),
          ),
          itemCount: _coupons.length,
        ),
      );

  Widget _itemOfList(BuildContext context, int index) => Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8),
        child: ListTile(
          onTap: (){

          },
          leading: Container(
            width: _size.width/7.5,
            height: _size.width/7.5,
            child: CircleAvatar(
              backgroundImage: AssetImage(
                _coupons[index].imgPath,
              ),
            ),
          ),
          title: Text(
            _coupons[index].title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(_coupons[index].subTitle),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey[300],
          ),
        ),
      );
}
