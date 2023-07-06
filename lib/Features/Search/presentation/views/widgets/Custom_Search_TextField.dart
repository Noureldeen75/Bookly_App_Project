import 'package:bookly/Features/Search/presentation/manager/SearchBooksCubit/SearchBooksCubit.dart';
import 'package:bookly/core/Utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: SearchBooksCubit.get(context).searchController,
            style: Styles.textStyle18,
            onFieldSubmitted: (value) async {
              if (SearchBooksCubit.get(context).isResultFound == false) {
                SearchBooksCubit.get(context).changeIsResultFound();
              }
              await SearchBooksCubit.get(context).getBooks();
            },
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: () async {
                    if (SearchBooksCubit.get(context).isResultFound == false) {
                      SearchBooksCubit.get(context).changeIsResultFound();
                    }
                    await SearchBooksCubit.get(context).getBooks();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 20.0,
                  )),
              label: const Text(
                'Search',
                style: Styles.textStyle16,
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white70, width: 2.0),
                  borderRadius: BorderRadius.circular(20.0)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.white70,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
            ),
          ),
        ),
        const SizedBox(
          width: 15.0,
        ),
        IconButton(
          onPressed: () {
            SearchBooksCubit.get(context).searchController.clear();
          },
          icon: const CircleAvatar(
            backgroundColor: Colors.white70,
            radius: 13.0,
            child: Icon(
              Icons.close,
            ),
          ),
        )
      ],
    );
  }
}
