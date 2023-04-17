part of './pages.dart';

class DetailMimPage extends StatefulWidget {
  String title;
  DetailMimPage({required this.title, super.key});

  @override
  State<DetailMimPage> createState() => _DetailMimPageState();
}

class _DetailMimPageState extends State<DetailMimPage> {
  Future<void> _showSaveDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Hooray!!!'),
          content: SingleChildScrollView(
            child: ListBody(children: [
              Text("Your Mim has been save"),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(border: Border.all(width: 1)),
              ),
            ]),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Share'),
              onPressed: () => _showShareDialog(),
            ),
            TextButton(
              child: const Text('OK!'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _showShareDialog() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Share your Mims'),
          content: SingleChildScrollView(
            child: ListBody(children: [
              TextButton(onPressed: () {}, child: Text("Share to FB")),
              TextButton(onPressed: () {}, child: Text("Share to Twitter")),
            ]),
          ),
        );
      },
    );
  }

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
        actions: [
          TextButton(
              onPressed: () => _showSaveDialog(),
              child: Text(
                "Save",
                style: TextStyle(
                  color: ColorApp().blue,
                ),
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 20),
            decoration: BoxDecoration(
                border: Border.all(
              width: 1,
            )),
          )),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ButtonInsert(title: "Add Logo", image: ImagesApp().insertImg),
                ButtonInsert(title: "Add Text", image: ImagesApp().insertText),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ButtonInsert extends StatelessWidget {
  String title, image;
  ButtonInsert({required this.title, required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: ColorApp().black,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Image.asset(
            image,
            width: 30,
            height: 30,
          )
        ],
      ),
    );
  }
}
