part of './pages.dart';

class HomePage extends StatefulWidget {
  String title;
  HomePage({required this.title, super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> initRetrieveData() async {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.title,
          style: GoogleFonts.luckiestGuy(
            color: ColorApp().black,
          ),
        ),
      ),
      body: SafeArea(
          child: RefreshIndicator(
        onRefresh: initRetrieveData,
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: GridView.builder(
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 4 / 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return _buildListItem(context);
              }),
        ),
      )),
    );
  }
}

Widget _buildListItem(BuildContext context) {
  return GestureDetector(
    onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DetailMimPage(
                  title: "MIM Generator",
                ))),
    child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: ColorApp().black)),
        child: Image.asset(ImagesApp().pepeLogo)),
  );
}
