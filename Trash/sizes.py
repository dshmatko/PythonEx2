
sizes = (
    {"talia": "63-65", "bedra": "89-92", "int": "XXS", "rus": "42",
        "ger": "36", "usa": "8", "fr": "38", "en": "24"},
    {"talia": "66-60", "bedra": "93-96", "int": "XS", "rus": "44",
        "ger": "38", "usa": "10", "fr": "40", "en": "26"},
    {"talia": "70-74", "bedra": "97-101", "int": "S", "rus": "46",
        "ger": "40", "usa": "12", "fr": "42", "en": "28"},
    {"talia": "75-78", "bedra": "102-104", "int": "M", "rus": "48",
        "ger": "42", "usa": "14", "fr": "44", "en": "30"},
    {"talia": "79-83", "bedra": "105-108", "int": "L", "rus": "50",
        "ger": "44", "usa": "16", "fr": "46", "en": "32"},
    {"talia": "84-89", "bedra": "109-112", "int": "XL", "rus": "50",
        "ger": "46", "usa": "18", "fr": "48", "en": "34"},
    {"talia": "90-94", "bedra": "113-117", "int": "XXL", "rus": "54",
        "ger": "48", "usa": "20", "fr": "50", "en": "36"},
    {"talia": "95-97", "bedra": "118-122", "int": "XXXL", "rus": "56",
        "ger": "50", "usa": "22", "fr": "52", "en": "38"},
)


def what_is_your_size(size_type, size_know, size_need):
    i = ""
    for r in sizes:
        for key, value in r.items():
            if size_know == value and size_type == key:
                return("You know - ", key, value)
                return("You need - ", size_need, r[size_need])


size_type = (
    input("What type size do you know(talia/bedra/int/rus/ger/usa/fr/en):"))
size_know = (input("What size do you know? "))
size_need = (input("What type size do you need? "))


print(what_is_your_size(size_type, size_know, size_need))
