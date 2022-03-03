import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../core/base/base_view.dart';
import '../viewmodel/makeup_view_model.dart';

class MakeupView extends StatelessWidget {
  const MakeupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<MakeupViewModel>(
        viewModel: MakeupViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, MakeupViewModel makeupViewModel) {
          return Scaffold(
            appBar: AppBar(),
            body: Observer(builder: ((_) {
              return makeupViewModel.isLoading
                  ? GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 300,
                              //childAspectRatio: 3 / 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                      itemCount: makeupViewModel.productList?.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Image.network(makeupViewModel
                                        .productList?[index].imageLink ??
                                    ''),
                              ),
                              Text(
                                makeupViewModel.productList?[index].name ?? '',
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                makeupViewModel.productList?[index].price ?? '',
                                textAlign: TextAlign.center,
                              ),
                              TextButton(
                                  onPressed: () {
                                    makeupViewModel.launchURL(makeupViewModel
                                        .productList?[index].productLink);
                                  },
                                  child: Text("see on the web"))
                            ],
                          ),
                        );
                      },
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    );
            })),
          );
        });
  }
}
