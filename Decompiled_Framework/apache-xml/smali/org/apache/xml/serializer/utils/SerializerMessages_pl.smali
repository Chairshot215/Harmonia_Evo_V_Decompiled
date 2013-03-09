.class public Lorg/apache/xml/serializer/utils/SerializerMessages_pl;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_pl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v1, 0x3b

    new-array v0, v1, [[Ljava/lang/Object;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "BAD_MSGKEY"

    aput-object v2, v1, v4

    const-string v2, "Klucz komunikatu \'\'{0}\'\' nie znajduje si\u0119 w klasie komunikat\u00f3w \'\'{1}\'\'"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "BAD_MSGFORMAT"

    aput-object v2, v1, v4

    const-string v2, "Nie powiod\u0142o si\u0119 sformatowanie komunikatu \'\'{0}\'\' w klasie komunikat\u00f3w \'\'{1}\'\'."

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    aput-object v2, v1, v4

    const-string v2, "Klasa szereguj\u0105ca \'\'{0}\'\' nie implementuje org.xml.sax.ContentHandler."

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_RESOURCE_COULD_NOT_FIND"

    aput-object v3, v2, v4

    const-string v3, "Nie mo\u017cna znale\u017a\u0107 zasobu [ {0} ].\n {1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_RESOURCE_COULD_NOT_LOAD"

    aput-object v3, v2, v4

    const-string v3, "Zas\u00f3b [ {0} ] nie m\u00f3g\u0142 za\u0142adowa\u0107: {1} \n {2} \t {3}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    aput-object v3, v2, v4

    const-string v3, "Wielko\u015b\u0107 buforu <=0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_INVALID_UTF16_SURROGATE"

    aput-object v3, v2, v4

    const-string v3, "Wykryto niepoprawny odpowiednik UTF-16: {0} ?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_OIERROR"

    aput-object v3, v2, v4

    const-string v3, "B\u0142\u0105d we/wy"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    aput-object v3, v2, v4

    const-string v3, "Nie mo\u017cna doda\u0107 atrybutu {0} po bezpo\u015brednich w\u0119z\u0142ach potomnych ani przed wyprodukowaniem elementu.  Atrybut zostanie zignorowany."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NAMESPACE_PREFIX"

    aput-object v3, v2, v4

    const-string v3, "Nie zadeklarowano przestrzeni nazw dla przedrostka \'\'{0}\'\'."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_STRAY_ATTRIBUTE"

    aput-object v3, v2, v4

    const-string v3, "Atrybut \'\'{0}\'\' znajduje si\u0119 poza elementem."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_STRAY_NAMESPACE"

    aput-object v3, v2, v4

    const-string v3, "Deklaracja przestrzeni nazw \'\'{0}\'\'=\'\'{1}\'\' znajduje si\u0119 poza elementem."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_COULD_NOT_LOAD_RESOURCE"

    aput-object v3, v2, v4

    const-string v3, "Nie mo\u017cna za\u0142adowa\u0107 \'\'{0}\'\' (sprawd\u017a CLASSPATH) - u\u017cywane s\u0105 teraz warto\u015bci domy\u015blne"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_ILLEGAL_CHARACTER"

    aput-object v3, v2, v4

    const-string v3, "Pr\u00f3ba wyprowadzenia znaku warto\u015bci ca\u0142kowitej {0}, kt\u00f3ry nie jest reprezentowany w podanym kodowaniu wyj\u015bciowym {1}."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    aput-object v3, v2, v4

    const-string v3, "Nie mo\u017cna za\u0142adowa\u0107 pliku w\u0142a\u015bciwo\u015bci \'\'{0}\'\' dla metody wyj\u015bciowej \'\'{1}\'\' (sprawd\u017a CLASSPATH)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_INVALID_PORT"

    aput-object v3, v2, v4

    const-string v3, "Niepoprawny numer portu"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PORT_WHEN_HOST_NULL"

    aput-object v3, v2, v4

    const-string v3, "Nie mo\u017cna ustawi\u0107 portu, kiedy host jest pusty"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    aput-object v3, v2, v4

    const-string v3, "Host nie jest poprawnie skonstruowanym adresem"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_NOT_CONFORMANT"

    aput-object v3, v2, v4

    const-string v3, "Schemat nie jest zgodny."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_FROM_NULL_STRING"

    aput-object v3, v2, v4

    const-string v3, "Nie mo\u017cna ustawi\u0107 schematu z pustego ci\u0105gu znak\u00f3w"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    aput-object v3, v2, v4

    const-string v3, "\u015acie\u017cka zawiera nieznan\u0105 sekwencj\u0119 o zmienionym znaczeniu"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PATH_INVALID_CHAR"

    aput-object v3, v2, v4

    const-string v3, "\u015acie\u017cka zawiera niepoprawny znak {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_INVALID_CHAR"

    aput-object v3, v2, v4

    const-string v3, "Fragment zawiera niepoprawny znak"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_WHEN_PATH_NULL"

    aput-object v3, v2, v4

    const-string v3, "Nie mo\u017cna ustawi\u0107 fragmentu, kiedy \u015bcie\u017cka jest pusta"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_FOR_GENERIC_URI"

    aput-object v3, v2, v4

    const-string v3, "Fragment mo\u017cna ustawi\u0107 tylko dla og\u00f3lnego URI"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_SCHEME_IN_URI"

    aput-object v3, v2, v4

    const-string v3, "Nie znaleziono schematu w URI"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    aput-object v3, v2, v4

    const-string v3, "Nie mo\u017cna zainicjowa\u0107 URI z pustymi parametrami"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_FRAGMENT_STRING_IN_PATH"

    aput-object v3, v2, v4

    const-string v3, "Nie mo\u017cna poda\u0107 fragmentu jednocze\u015bnie w \u015bcie\u017cce i fragmencie"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_QUERY_STRING_IN_PATH"

    aput-object v3, v2, v4

    const-string v3, "Tekstu zapytania nie mo\u017cna poda\u0107 w tek\u015bcie \u015bcie\u017cki i zapytania"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_PORT_IF_NO_HOST"

    aput-object v3, v2, v4

    const-string v3, "Nie mo\u017cna poda\u0107 portu, je\u015bli nie podano hosta"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_USERINFO_IF_NO_HOST"

    aput-object v3, v2, v4

    const-string v3, "Nie mo\u017cna poda\u0107 informacji o u\u017cytkowniku, je\u015bli nie podano hosta"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_XML_VERSION_NOT_SUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "Ostrze\u017cenie:  Wymagan\u0105 wersj\u0105 dokumentu wyj\u015bciowego jest \'\'{0}\'\'.  Ta wersja XML nie jest obs\u0142ugiwana.  Wersj\u0105 dokumentu wyj\u015bciowego b\u0119dzie \'\'1.0\'\'."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_REQUIRED"

    aput-object v3, v2, v4

    const-string v3, "Schemat jest wymagany!"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FACTORY_PROPERTY_MISSING"

    aput-object v3, v2, v4

    const-string v3, "Obiekt klasy Properties przekazany do klasy SerializerFactory nie ma w\u0142a\u015bciwo\u015bci \'\'{0}\'\'."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_ENCODING_NOT_SUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "Ostrze\u017cenie:  dekodowany \'\'{0}\'\' nie jest obs\u0142ugiwany przez \u015brodowisko wykonawcze Java."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "FEATURE_NOT_FOUND"

    aput-object v3, v2, v4

    const-string v3, "Parametr \'\'{0}\'\' nie zosta\u0142 rozpoznany."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "FEATURE_NOT_SUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "Parametr \'\'{0}\'\' zosta\u0142 rozpoznany, ale nie mo\u017cna ustawi\u0107 \u017c\u0105danej warto\u015bci."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DOMSTRING_SIZE_ERR"

    aput-object v3, v2, v4

    const-string v3, "Wynikowy \u0142a\u0144cuch jest zbyt d\u0142ugi, aby si\u0119 zmie\u015bci\u0107 w obiekcie DOMString: \'\'{0}\'\'."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "TYPE_MISMATCH_ERR"

    aput-object v3, v2, v4

    const-string v3, "Typ warto\u015bci parametru o tej nazwie jest niezgodny z oczekiwanym typem warto\u015bci. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "no-output-specified"

    aput-object v3, v2, v4

    const-string v3, "Docelowe miejsce zapisu danych wyj\u015bciowych by\u0142o puste (null)."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unsupported-encoding"

    aput-object v3, v2, v4

    const-string v3, "Napotkano nieobs\u0142ugiwane kodowanie."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_UNABLE_TO_SERIALIZE_NODE"

    aput-object v3, v2, v4

    const-string v3, "Nie mo\u017cna przekszta\u0142ci\u0107 w\u0119z\u0142a do postaci szeregowej."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "cdata-sections-splitted"

    aput-object v3, v2, v4

    const-string v3, "Sekcja CDATA zawiera jeden lub kilka znacznik\u00f3w zako\u0144czenia \']]>\'."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WARNING_WF_NOT_CHECKED"

    aput-object v3, v2, v4

    const-string v3, "Nie mo\u017cna utworzy\u0107 instancji obiektu sprawdzaj\u0105cego Well-Formedness.  Parametr well-formed ustawiono na warto\u015b\u0107 true, ale nie mo\u017cna by\u0142o dokona\u0107 sprawdzenia poprawno\u015bci konstrukcji."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "wf-invalid-character"

    aput-object v3, v2, v4

    const-string v3, "W\u0119ze\u0142 \'\'{0}\'\' zawiera niepoprawne znaki XML."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    aput-object v3, v2, v4

    const-string v3, "W komentarzu znaleziono niepoprawny znak XML (Unicode: 0x{0})."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_PI"

    aput-object v3, v2, v4

    const-string v3, "W danych instrukcji przetwarzania znaleziono niepoprawny znak XML (Unicode: 0x{0})."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    aput-object v3, v2, v4

    const-string v3, "W sekcji CDATA znaleziono niepoprawny znak XML (Unicode: 0x{0})."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    aput-object v3, v2, v4

    const-string v3, "W tre\u015bci danych znakowych w\u0119z\u0142a znaleziono niepoprawny znak XML (Unicode: 0x{0})."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "wf-invalid-character-in-node-name"

    aput-object v3, v2, v4

    const-string v3, "W {0} o nazwie \'\'{1}\'\' znaleziono niepoprawne znaki XML."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_DASH_IN_COMMENT"

    aput-object v3, v2, v4

    const-string v3, "Ci\u0105g znak\u00f3w \"--\" jest niedozwolony w komentarzu."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_LT_IN_ATTVAL"

    aput-object v3, v2, v4

    const-string v3, "Warto\u015b\u0107 atrybutu \"{1}\" zwi\u0105zanego z typem elementu \"{0}\" nie mo\u017ce zawiera\u0107 znaku \'\'<\'\'."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_REF_TO_UNPARSED_ENT"

    aput-object v3, v2, v4

    const-string v3, "Odwo\u0142anie do encji nieprzetwarzanej \"&{0};\" jest niedozwolone."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_REF_TO_EXTERNAL_ENT"

    aput-object v3, v2, v4

    const-string v3, "Odwo\u0142anie do zewn\u0119trznej encji \"&{0};\" jest niedozwolone w warto\u015bci atrybutu."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    aput-object v3, v2, v4

    const-string v3, "Nie mo\u017cna zwi\u0105za\u0107 przedrostka \"{0}\" z przestrzeni\u0105 nazw \"{1}\"."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NULL_LOCAL_ELEMENT_NAME"

    aput-object v3, v2, v4

    const-string v3, "Nazwa lokalna elementu \"{0}\" jest pusta (null)."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NULL_LOCAL_ATTR_NAME"

    aput-object v3, v2, v4

    const-string v3, "Nazwa lokalna atrybutu \"{0}\" jest pusta (null)."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unbound-prefix-in-entity-reference"

    aput-object v3, v2, v4

    const-string v3, "Tekst zast\u0119puj\u0105cy w\u0119z\u0142a encji \"{0}\" zawiera w\u0119ze\u0142 elementu \"{1}\" o niezwi\u0105zanym przedrostku \"{2}\"."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unbound-prefix-in-entity-reference"

    aput-object v3, v2, v4

    const-string v3, "Tekst zast\u0119puj\u0105cy w\u0119z\u0142a encji \"{0}\" zawiera w\u0119ze\u0142 atrybutu \"{1}\" o niezwi\u0105zanym przedrostku \"{2}\"."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    return-object v0
.end method
