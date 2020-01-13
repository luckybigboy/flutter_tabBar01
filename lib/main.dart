// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(title: 'fluttr navigator(跳转)', home: firstPage()));
// }

// class firstPage extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('这是第一个页面'),
//         ),
//         body: Center(
//           child: RaisedButton(
//             color: Colors.lightBlue,
//             padding: EdgeInsets.all(10.0),
//             onPressed: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => new secondPage(),
//                   ));
//             },
//             child: Text(
//               '点击跳转到第二个页面',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.w500),
//             ),
//           ),
//         ));
//   }
// }

// class secondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text('第二个页面')),
//         body: Center(
//           child: ListView(
//             children: <Widget>[
//               RaisedButton(
//                   color: Colors.lightBlue,
//                   padding: EdgeInsets.all(10.0),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: Text('返回',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20.0))),
//                RaisedButton(
//                  color:Colors.lightBlue,
//                  padding: EdgeInsets.all(10.0),
//                  onPressed: () {
//                    Navigator.push(context, MaterialPageRoute(
//                       builder: (context) =>  listCard()
//                    ));
//                  },
//                  child: Text(
//                    '跳转到列表页',
//                    style: TextStyle(
//                      color: Colors.white,
//                      fontWeight: FontWeight.bold,
//                      fontSize: 20.0
//                    )
//                  ),
//                )
//             ],
//           ),
//         ));
//   }
// }

// class listCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('列表')),
//       body: Card(
//         child: ListView(
//           children: <Widget>[
//             ListTile(
//               title: Text('湖北省武汉市', style: TextStyle(color: Colors.lightBlue,  fontWeight: FontWeight.bold)),
//               subtitle: Text('江夏区'),
//               leading: Icon(
//                 Icons.account_box,
//                 color: Colors.lightBlue,
//               ),
//             ),
//             Divider(),
//             ListTile(
//               title: Text('湖北省武汉市', style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: Colors.lightBlue
//               ),),
//               subtitle: Text('福明渠'),
//               leading: Icon(Icons.account_box, color: Colors.lightBlue,),
//             ),
//             Divider(),
//             ListTile(
//               title: Text('湖北省武汉市', style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: Colors.lightBlue
//               ),),
//               subtitle: Text('上行点'),
//               leading: Icon(Icons.account_box, color: Colors.lightBlue,),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// 导航的参数传递和接收

// import 'package:flutter/material.dart';

// class Product {
//   final String title;
//   final String describe;
//   Product(this.title, this.describe);
// }

// void main() {
//   runApp(
//     MaterialApp(
//       title: '列表',
//       home: productList(
//         products: List.generate(30, (i) => Product('big商品 $i', '详情为： 编号$i')))
//       )
//     );
// }

// class productList extends StatelessWidget {
//   final List<Product> products;
//   productList({Key key, @required this.products}):super(key:key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('商品列表')
//       ),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(products[index].title),
//             onTap: () {
//               Navigator.push(context, MaterialPageRoute(
//                 builder: (context) => detailProduct(product: products[index])
//               ));
//             },
//           );
//         },
//       )
//     );
//   }
// }

// class detailProduct extends StatelessWidget {
//   final Product product;
//   detailProduct({Key key, @required this.product}):super(key:key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('详情${product.title}'),
//       ),
//       body: Center(
//         child: Text('${product.describe}'),
//       ),
//     );
//   }
// }

// 页面跳转并返回数据

// import 'package:flutter/material.dart';

// class Product {
//   final String title;
//   final String describe;
//   Product(this.title, this.describe);
// }

// void main() {
//   runApp(
//     MaterialApp(
//       title: '商品列表',
//       home: ProductList(
//         products: List.generate(20, (i) => Product('商品$i', '商品详情是: 编号$i'))
//       )
//     )
//   );
// }

// class ProductList extends StatelessWidget {
//    final List<Product> products;
//    ProductList({Key key, @required this.products}):super(key:key);
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('商品'),
//        ),
//        body: ListView.builder(
//          itemCount: products.length,
//          itemBuilder: (context, index) {
//            return ListTile(
//              title: Text('${products[index].title}'),
//              onTap: () {
//                Navigator.push(context, MaterialPageRoute(
//                    builder: (context) => detailPage(product: products[index])
//                ));
//              },
//            );
//          },
//        ),
//      );
//    }
// }

// class detailPage extends StatelessWidget {
//   final Product product;
//   detailPage({Key key, @required this.product}):super(key:key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${product.title}'),
//       ),
//       body: Center(
//         child: Text('${product.describe}'),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(title: '子向父传值', home: faterPage()));
// }

// class faterPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text('父组件')),
//         body: Center(
//             child: Column(
//           children: <Widget>[raiseMyButton()],
//         )));
//   }
// }

// class raiseMyButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         RaisedButton(
//           onPressed: () {
//             _navigatorTochildPage(context);
//           },
//           child: Text('跳转子组件'),
//         )
//       ],
//     );
//   }

//   _navigatorTochildPage(BuildContext context) async {
//     final result = await Navigator.push(
//         context, MaterialPageRoute(builder: (context) => childPage()));
//     Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
//   }
// }

// class childPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('子组件'),
//       ),
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             RaisedButton(
//               onPressed: () {
//                 Navigator.pop(context, '第一个值');
//               },
//               child: Text('点击第一个向父组件传值'),
//             ),
//             RaisedButton(
//               child: Text('点击第二个向父组件传值'),
//               onPressed: () {
//                 Navigator.pop(context, '第二个值');
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Product {
  final String title;
  final String desc;
  Product(this.title, this.desc);
}

void main() {
  runApp(MaterialApp(
      title: 'flutter app',
      home: productList(
          products: List.generate(30, (i) => Product('商品$i', '商品的详情:编号是$i')))));
}

class productList extends StatelessWidget {
  final List<Product> products;
  const productList({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${products[index].title}'),
            onTap: () {
              _navigatorToDetailPage(context, index);
            },
          );
        },
      ),
    );
  }

  _navigatorToDetailPage(BuildContext context, index) async {
    final result = await Navigator.push(context, MaterialPageRoute(
      builder: (context) => detailPage(product: products[index])
    ));
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(
        '$result'
        ),
      action: SnackBarAction(
        label: '取消',
        onPressed: () {},
      ),
      backgroundColor: Colors.red
      ));
    // Scaffold.of(context).showBodyScrim(value, opacity)
  }
}


class detailPage extends StatelessWidget {
  final Product product;
  detailPage({Key key,@required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${product.title}'),
      ),
      body: Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              '${product.desc}',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 25.0,
                fontWeight: FontWeight.bold
              )
              ),
            RaisedButton(
              child: Text('点击向父组件传值'),
              onPressed: () {
                Navigator.pop(context, '${product.title}');
              },
            )
          ],
        ),
      ),
    )
    );
  }
}