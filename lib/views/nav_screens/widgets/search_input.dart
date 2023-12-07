import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 14.0, right: 14, bottom: 0, top: 1.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                style: TextStyle(
                    color: Colors
                        .black), // Couleur du texte à l'intérieur du TextField
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 1.0,
                  ), // Réduit la hauteur du TextField
                  hintText: 'Search For Products',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey, width: 1.0), // Bordure noire fine
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0), // Bordure noire plus épaisse lors du focus
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Icon(Icons.search_outlined,
                        size: 23, color: Color.fromARGB(255, 231, 76, 60)),
                  ),
                ),
              )),
              Container(
                height: 46.0, // Hauteur du carré rouge

                margin: EdgeInsets.only(
                    left: 8.0), // Espace entre le TextField et le carré
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 231, 76, 60),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.tune, color: Colors.white),
                ),
              ),
            ],
          )),
    );
  }
}
