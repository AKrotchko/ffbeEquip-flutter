import 'package:ffbeequip/services/units_service.dart';
import 'package:ffbeequip/ui/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
    this.notifyParent,
    this.margin = const EdgeInsets.symmetric(horizontal: 28),
  }) : super(key: key);

  final EdgeInsets margin;
  final Function notifyParent;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      margin: margin,
      decoration: ShapeDecoration(
        shape: StadiumBorder(),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(width: 13),
          Expanded(
            child: TypeAheadField(
              textFieldConfiguration: TextFieldConfiguration(
                style: DefaultTextStyle.of(context)
                    .style
                    .copyWith(fontStyle: FontStyle.italic),
                decoration: InputDecoration(
                    hintText: 'Select a Unit...',
                    hintStyle: TextStyle(fontSize: 14, color: Colors.black),
                    border: InputBorder.none),
              ),
              hideSuggestionsOnKeyboardHide: false,
              getImmediateSuggestions: true,
              suggestionsCallback: (pattern) async {
                return await getSuggestions(pattern);
              },
              itemBuilder: (context, suggestion) {
                return Container(
                  child: ListTile(
                    title: Text(suggestion),
                  ),
                );
              },
              onSuggestionSelected: (suggestion) {
                selectedUnit = getUnitFromSuggestion(suggestion);
                notifyParent();
              },
              noItemsFoundBuilder: (context) {
                return ListTile(
                  leading: Text(
                    "No results found.",
                    style: TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
