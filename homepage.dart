import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class DataSearch extends SearchDelegate<String>{
  final cities = [
    "Agra",
    "Pune",
    "Lucknow",
    "Meerut",
    "Delhi",
    "Ahemdabad",
    "Bilaspur",
    "Mumbai",
    "Agartala",
    "Bangalore",
    "Manglore",
    "Patiala",
    "Ambala",
    "Noida",
    "Thane",
    "Hyderabad",
    "Niwai",
    "Indore",
    "Vadodra",
    "Kanpur",
    "Ghaziabad"
  ];
  final recent =[
    "Agra",
    "Pune",
    "Lucknow",
    "Meerut",
    "Delhi",
    "Ahemdabad"

  ];





  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(icon:Icon(Icons.clear), onPressed: (){
        query="";
      }),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(icon:AnimatedIcon(icon: AnimatedIcons.menu_arrow,progress: transitionAnimation),onPressed: (){
      close(context, null);
    });
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final suggestion = query.isEmpty?recent:
    cities.where((p)=>p.startsWith(query)).toList();
    return ListView.builder(itemBuilder: (context,index)=>ListTile(
      onTap: (){
        showResults(context);
      },


      leading: Icon(Icons.location_city),
      title: RichText(
        text:TextSpan(
          text:suggestion[index].substring(0,query.length),
          style:TextStyle(color:Colors.black, fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text:suggestion[index].substring(query.length),
              style:TextStyle(color:Colors.grey),

            )
          ]
        )
      ),

    ),
      itemCount: suggestion.length,
    );
  }

}



class _HomePageState extends State<HomePage>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back,), onPressed: () {
          //
        }),
        title: Text ("Gallery"),
        actions: <Widget>[
          IconButton(icon:Icon(Icons.arrow_downward,), onPressed: () {
            showSearch(context: context, delegate: DataSearch());
          }),
        ],
      ),
      body:
        Padding(
        padding: const EdgeInsets.all(8.0),
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(24.0),
    color: Colors.white,
    ),
        child: StaggeredGridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          staggeredTiles: [
            StaggeredTile.count(2, 2),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(4, 1),
            StaggeredTile.count(2, 2),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(4, 1),
            StaggeredTile.count(2, 2),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(4, 1),
          ],

          children: <Widget>[

            myPhotoList(
                "https://images.unsplash.com/photo-1511551203524-9a24350a5771?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
            myPhotoList(
                "https://images.unsplash.com/photo-1476703993599-0035a21b17a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
            myPhotoList(
                "https://images.unsplash.com/photo-1482235225574-c37692835cf3?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
            myPhotoList(
                "https://images.unsplash.com/photo-1437954820769-76094033b90f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
            myPhotoList(
                "https://images.unsplash.com/photo-1469406396016-013bfae5d83e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),

            captionText("Album"),


            myPhotoList(
                "https://images.unsplash.com/photo-1534546584494-57363237b97f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
            myPhotoList(
                "https://images.unsplash.com/photo-1521320226546-87b106956014?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
            myPhotoList(
                "https://images.unsplash.com/photo-1486808044402-a7c67ef5ea7b?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
            myPhotoList(
                "https://images.unsplash.com/photo-1482076791374-bbc7876d9213?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
            myPhotoList(
                "https://images.unsplash.com/photo-1483412919093-03a22057d0d7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
            captionText("Mountains"),
            myPhotoList(
                "https://images.unsplash.com/photo-1485871981521-5b1fd3805eee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
            myPhotoList(
                "https://images.unsplash.com/photo-1445023086979-7244a12345a8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
            myPhotoList(
                "https://images.unsplash.com/photo-1532960401447-7dd05bef20b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=679&q=80"),
            myPhotoList(
                "https://images.unsplash.com/uploads/1412594480669535c9ef9/9d85c477?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
            myPhotoList(
                "https://images.unsplash.com/photo-1499566727020-881da110a0b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),


                captionText("Pictures"),




          ],
          padding:const EdgeInsets.all(4.0),
        )
    )
        ),

    );
  }
  Widget captionText(String titleText)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height:20.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(titleText,
                  style: TextStyle(color: Colors.black, fontSize: 24.0),),
              ),
            ),

          ],



        ),
      ),
    );


  }
  Widget myPhotoList(String MyImages)
  {
    return Container(
      decoration: BoxDecoration(
      image: DecorationImage(
      fit: BoxFit.fill,
      image: NetworkImage(
          MyImages),
    ),
      ),
    );
  }




}