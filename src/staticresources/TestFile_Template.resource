{
    "DG1" : {
        "type" : "DataGroup",
        "contact1" : {
            "type" : "data",
            "data" : {
                "firstname" : "Justin",
                "lastname" : "Yue"
            },
            "action" : [{
                    "cmd" : "add",
                    "$.Birthdate" : "{!TODAY()}"
                }
            ]

        },
        "contact2" : {
            "type" : "duplicate",
            "path" : "/./DG1/contact1",
            "action" : [{
                    "cmd" : "modify",
                    "$.Birthdate" : "{!Date(1968, 11, 8)}"
                }

            ]
        }
    },
    "DG2" : {
        "type" : "DataGroup",
        "contact3" : {
            "type" : "ref",
            "path" : "/./DG1/contact1",
            "action" : [{
                    "cmd" : "remove",
                    "$.Birthdate" : null
                }
            ]
        }
    },
    "VG1" : {}
}
