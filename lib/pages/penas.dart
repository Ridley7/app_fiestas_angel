import 'package:app_fiestas_angel/common/HttpHandler.dart';
import 'package:flutter/material.dart';

class Penas extends StatelessWidget {
  const Penas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final scrollController = ScrollController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Peñas"),
      ),

      body: FutureBuilder(
        future: HttpHandler().getPenas(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if(!snapshot.hasData){
            return SizedBox(
              height: MediaQuery.of(context).hashCode * 0.4,
              child: Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            );
          }
          else{
            return Padding(
              padding: const EdgeInsets.all(15),
              child: CustomScrollView(
                controller: scrollController,
                slivers:  [
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),

                  SliverList(
                      delegate: SliverChildBuilderDelegate(
                              (context, index){

                          }
                      )
                  ),

                ],
              ),
            );
          }
        }

      )
    );
  }
}
