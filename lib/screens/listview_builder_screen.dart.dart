import 'package:componentes/themes/app_themes.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

// Size  (BuildContext context) {
//   double size = (MediaQuery.of(context).size / 2);
//   return size;
// }

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imageIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  final ScrollController scrollController = ScrollController();

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      scrollController;
      if (scrollController.position.pixels >
          scrollController.position.maxScrollExtent) {
        fetchData();
      } else {}
    });
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 2));
    add();

    //////////////////////////////////////////////////////////////////////////////////////
    ///Creación de la animación de carga
    scrollController.animateTo(
      scrollController.position.pixels + 100,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
    /////////////////////////////////////////////////////////////////////////////////////

    isLoading = false;
  }

//////////////////////////////////////////////////////////////////////////////////////
  ///agrega 5 imágenes al final y las va generando,
  void add() {
    final int lastId = imageIds.last;
    imageIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

//////////////////////////////////////////////////////////////////////////////////////

  //////////////////////////////////////////////////////////////////
  ///Funcion para crear el refresh
  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 3));
    final lastId = imageIds.last;
    imageIds.clear();
    imageIds.add(lastId + 1);
    add();
  }

  //////////////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context) / 2;
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context, //toma el contexto de la app
        removeTop: true, //remueve el espacio sobrante de arriba
        removeBottom: true, //remueve el espacio sobrante de abajo
        child: Stack(
          children: [
            //
            RefreshIndicator(
              color: AppTheme.primaryColor, //color del refresh
              onRefresh: onRefresh, //se envía el refresh
              child: ListView.builder(
                physics:
                    const BouncingScrollPhysics(), //crea una animación de rebote
                itemCount: imageIds.length,
                controller: scrollController,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    width: double.infinity, //toma todo el ancho posible
                    height: 300, //toma 300 px de altura
                    fit: BoxFit.cover, //cubre todo el campo
                    placeholder: const AssetImage(
                        'assets/NmJgg.jpg'), //Imagen de precarga

                    image: NetworkImage(
                        'https://picsum.photos/500/300?images=${imageIds[index]}'), //Imagen obtenida de api
                  );
                },
              ),
            ),
            if (isLoading) _LoadingIcon(size: size)
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(bottom: 10, left: size.width, child: const _Loading());
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //widget para hacer el loading
  Widget build(BuildContext context) {
    return Container(
      //
      //tamaño del circulo
      //////////////////////////////////////////////
      height: 50,
      width: 50,
      ////////////////////////////////////////////////

      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9), //color del contenedor loading
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(
        color: AppTheme.primaryColor,
      ),
    );
  }
  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}
