(import <nixpkgs> { 
  overlays = import (builtins.fetchGit
    { url = "https://github.com/theNerd247/conix.git";
    });
}).conix.build.markdownFile "Volunteers" 

(conix: conix.texts [] [
''# Volunteer Handbook

## Emergency Plan

Incase of an emergency please contact: '' (conix.textOf [ "contacts" "row2" "col0" ])" at "
(conix.textOf ["contacts" "row2" "col1"]) ''


## Volunteer Contacts 

_Volunteers still needed!: ''(conix.pureModule (builtins.toString (8 - conix.pages.contacts.rows.length)))''_

'' 
(conix.table [ "contacts" ]
  ["Name" "Phone" ]
  (conix.sortRows 
    [ ["John"   "555-123-4563"]
      ["Jacob"  "555-321-9872"]
      ["Jingle" "555-231-7589"]
    ]
  )
)
])
