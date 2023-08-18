import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/model/model.dart';
import 'package:flutter_application_1/view/home.dart';


class Carduser extends StatefulWidget {
  const Carduser({
    super.key,
    required this.prudocts,
  });
  final Prudocts prudocts;

  @override
  State<Carduser> createState() => _CarduserState();
}

class _CarduserState extends State<Carduser> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        prudoctslist.remove(widget.prudocts);
        setState(() {});
      },
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Home(
             // prudocts: widget.prudocts,
            ),
          )),
      child: Card(
        margin: const EdgeInsets.all(20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        widget.prudocts.image,
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(widget.prudocts.author)
                  ],
                ),
              ),
              ListTile(
                trailing: Image.network(
                  widget.prudocts.image,
                  width: 100,
                  height: 100,
                ),
                title: Text(widget.prudocts.title),
                subtitle: Text(widget.prudocts.subject),
              ),
              ListTile(
                  trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(
                     //   prudoctsDataModel: widget.prudocts,
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.edit),
                iconSize: 25,
              )),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(widget.prudocts.min),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // ListTile(
              //   leading: Threicon(),

              // ),
            ].toList()),
      ),
    );
  }
}
