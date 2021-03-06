let
  nGoals = gs: 
    with builtins; 
      toString (length (filter (n: match "goal." n != null) (attrNames gs)));
in
conix: conix.texts [ "goals" ] [
# TODO: maybe shorten these goals down so they're title worthy?
''# Goals

''(conix.texts [ "list" ] [
"1. "
 (conix.text [ "goal1"] 
   ''Allow users to describe relationships between different pieces of their
   content without breaking the natural flow of content.''
 )''
 
1. ''
 (conix.text [ "goal2" ] 
   "Provide intuitive build support for various output formats."
 )
])''


## Goal 1

> ''(conix.textOf ["goals" "list" "goal1"])''


Writing prose - especially technical documents - creates lot of implicit
relationships between content.

For example: 

> there are ''(conix.moduleUsing ["ngoals"] ["goals" "list"] (gs: conix.text []
  (nGoals gs)))'' goals stated at the top of this document.

The number stated above is computed by counting the number of elements in the
list above. This is a relationship between that statement and the list of
goals. 

Most of the time these relationships are very easy to determine in our heads
and just write them down - I mean, how hard is it to count to ''(conix.textOf
[ "goals" "ngoals"])''. However, problems arise when the relationship changes or the
content itself changes.

For example, if I were to add another goal to the above list then chances are I
would forget to go back and update the number in the above statement and some
reader would tell me of the typo. I would be embarrassed to have overlooked
such a small detail and yet easy number to come up with.

## Goal 2

> ''(conix.textOf ["goals" "list" "goal2"])''

Markdown is amazing. And for small standalone documents - like readme files -
running a single command to build a file is easy. Heck, even hosted files on
GitHub automatically render as markdown. However, many documents are not simple
markdown files and often require messy build scripts.

Conix aspires to hide as much of the build process for documents as possible.

'']
