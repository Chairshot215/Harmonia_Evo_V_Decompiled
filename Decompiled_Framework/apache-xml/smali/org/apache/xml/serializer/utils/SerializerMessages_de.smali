.class public Lorg/apache/xml/serializer/utils/SerializerMessages_de;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_de.java"


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

    const-string v2, "Der Nachrichtenschl\u00fcssel \'\'{0}\'\' ist nicht in der Nachrichtenklasse \'\'{1}\'\' enthalten."

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "BAD_MSGFORMAT"

    aput-object v2, v1, v4

    const-string v2, "Das Format der Nachricht \'\'{0}\'\' in der Nachrichtenklasse \'\'{1}\'\' ist fehlgeschlagen."

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    aput-object v2, v1, v4

    const-string v2, "Die Parallel-Seriell-Umsetzerklasse \'\'{0}\'\' implementiert org.xml.sax.ContentHandler nicht."

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_RESOURCE_COULD_NOT_FIND"

    aput-object v3, v2, v4

    const-string v3, "Die Ressource [ {0} ] konnte nicht gefunden werden.\n {1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_RESOURCE_COULD_NOT_LOAD"

    aput-object v3, v2, v4

    const-string v3, "Die Ressource [ {0} ] konnte nicht geladen werden: {1} \n {2} \t {3}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    aput-object v3, v2, v4

    const-string v3, "Puffergr\u00f6\u00dfe <=0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_INVALID_UTF16_SURROGATE"

    aput-object v3, v2, v4

    const-string v3, "Ung\u00fcltige UTF-16-Ersetzung festgestellt: {0} ?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_OIERROR"

    aput-object v3, v2, v4

    const-string v3, "E/A-Fehler"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    aput-object v3, v2, v4

    const-string v3, "Attribut {0} kann nicht nach Kindknoten oder vor dem Erstellen eines Elements hinzugef\u00fcgt werden.  Das Attribut wird ignoriert."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NAMESPACE_PREFIX"

    aput-object v3, v2, v4

    const-string v3, "Der Namensbereich f\u00fcr Pr\u00e4fix \'\'{0}\'\' wurde nicht deklariert."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_STRAY_ATTRIBUTE"

    aput-object v3, v2, v4

    const-string v3, "Attribut \'\'{0}\'\' befindet sich nicht in einem Element."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_STRAY_NAMESPACE"

    aput-object v3, v2, v4

    const-string v3, "Namensbereichdeklaration \'\'{0}\'\'=\'\'{1}\'\' befindet sich nicht in einem Element."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_COULD_NOT_LOAD_RESOURCE"

    aput-object v3, v2, v4

    const-string v3, "\'\'{0}\'\' konnte nicht geladen werden (CLASSPATH pr\u00fcfen). Es werden die Standardwerte verwendet."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_ILLEGAL_CHARACTER"

    aput-object v3, v2, v4

    const-string v3, "Es wurde versucht, ein Zeichen des Integralwerts {0} auszugeben, der nicht in der angegebenen Ausgabeverschl\u00fcsselung von {1} dargestellt ist."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    aput-object v3, v2, v4

    const-string v3, "Die Merkmaldatei \'\'{0}\'\' konnte f\u00fcr die Ausgabemethode \'\'{1}\'\' nicht geladen werden (CLASSPATH pr\u00fcfen)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_INVALID_PORT"

    aput-object v3, v2, v4

    const-string v3, "Ung\u00fcltige Portnummer"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PORT_WHEN_HOST_NULL"

    aput-object v3, v2, v4

    const-string v3, "Der Port kann nicht festgelegt werden, wenn der Host gleich Null ist."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    aput-object v3, v2, v4

    const-string v3, "Der Host ist keine syntaktisch korrekte Adresse."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_NOT_CONFORMANT"

    aput-object v3, v2, v4

    const-string v3, "Das Schema ist nicht angepasst."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_FROM_NULL_STRING"

    aput-object v3, v2, v4

    const-string v3, "Schema kann nicht von Nullzeichenfolge festgelegt werden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    aput-object v3, v2, v4

    const-string v3, "Der Pfad enth\u00e4lt eine ung\u00fcltige Escapezeichenfolge."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PATH_INVALID_CHAR"

    aput-object v3, v2, v4

    const-string v3, "Pfad enth\u00e4lt ung\u00fcltiges Zeichen: {0}."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_INVALID_CHAR"

    aput-object v3, v2, v4

    const-string v3, "Fragment enth\u00e4lt ein ung\u00fcltiges Zeichen."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_WHEN_PATH_NULL"

    aput-object v3, v2, v4

    const-string v3, "Fragment kann nicht festgelegt werden, wenn der Pfad gleich Null ist."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_FOR_GENERIC_URI"

    aput-object v3, v2, v4

    const-string v3, "Fragment kann nur f\u00fcr eine generische URI (Uniform Resource Identifier) festgelegt werden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_SCHEME_IN_URI"

    aput-object v3, v2, v4

    const-string v3, "Kein Schema gefunden in URI"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    aput-object v3, v2, v4

    const-string v3, "URI (Uniform Resource Identifier) kann nicht mit leeren Parametern initialisiert werden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_FRAGMENT_STRING_IN_PATH"

    aput-object v3, v2, v4

    const-string v3, "Fragment kann nicht im Pfad und im Fragment angegeben werden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_QUERY_STRING_IN_PATH"

    aput-object v3, v2, v4

    const-string v3, "Abfragezeichenfolge kann nicht im Pfad und in der Abfragezeichenfolge angegeben werden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_PORT_IF_NO_HOST"

    aput-object v3, v2, v4

    const-string v3, "Der Port kann nicht angegeben werden, wenn der Host nicht angegeben wurde."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_USERINFO_IF_NO_HOST"

    aput-object v3, v2, v4

    const-string v3, "Benutzerinformationen k\u00f6nnen nicht angegeben werden, wenn der Host nicht angegeben wurde."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_XML_VERSION_NOT_SUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "Warnung: Die Version des Ausgabedokuments muss \'\'{0}\'\' lauten.  Diese XML-Version wird nicht unterst\u00fctzt.  Die Version des Ausgabedokuments ist \'\'1.0\'\'."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_REQUIRED"

    aput-object v3, v2, v4

    const-string v3, "Schema ist erforderlich!"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FACTORY_PROPERTY_MISSING"

    aput-object v3, v2, v4

    const-string v3, "Das an SerializerFactory \u00fcbermittelte Merkmalobjekt weist kein Merkmal \'\'{0}\'\' auf."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_ENCODING_NOT_SUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "Warnung:  Die Codierung \'\'{0}\'\' wird von Java Runtime nicht unterst\u00fctzt."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "FEATURE_NOT_FOUND"

    aput-object v3, v2, v4

    const-string v3, "Der Parameter \'\'{0}\'\' wird nicht erkannt."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "FEATURE_NOT_SUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "Der Parameter \'\'{0}\'\' wird erkannt, der angeforderte Wert kann jedoch nicht festgelegt werden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DOMSTRING_SIZE_ERR"

    aput-object v3, v2, v4

    const-string v3, "Die Ergebniszeichenfolge ist zu lang f\u00fcr eine DOM-Zeichenfolge: \'\'{0}\'\'."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "TYPE_MISMATCH_ERR"

    aput-object v3, v2, v4

    const-string v3, "Der Werttyp f\u00fcr diesen Parameternamen ist nicht kompatibel mit dem erwarteten Werttyp."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "no-output-specified"

    aput-object v3, v2, v4

    const-string v3, "Das Ausgabeziel f\u00fcr die zu schreibenden Daten war leer."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unsupported-encoding"

    aput-object v3, v2, v4

    const-string v3, "Eine nicht unterst\u00fctzte Codierung wurde festgestellt."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_UNABLE_TO_SERIALIZE_NODE"

    aput-object v3, v2, v4

    const-string v3, "Der Knoten konnte nicht serialisiert werden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "cdata-sections-splitted"

    aput-object v3, v2, v4

    const-string v3, "Der Abschnitt CDATA enth\u00e4lt mindestens eine Beendigungsmarkierung \']]>\'."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WARNING_WF_NOT_CHECKED"

    aput-object v3, v2, v4

    const-string v3, "Eine Instanz des Pr\u00fcfprogramms f\u00fcr korrekte Formatierung konnte nicht erstellt werden.  F\u00fcr den korrekt formatierten Parameter wurde der Wert \'True\' festgelegt, die Pr\u00fcfung auf korrekte Formatierung kann jedoch nicht durchgef\u00fchrt werden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "wf-invalid-character"

    aput-object v3, v2, v4

    const-string v3, "Der Knoten \'\'{0}\'\' enth\u00e4lt ung\u00fcltige XML-Zeichen."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    aput-object v3, v2, v4

    const-string v3, "Im Kommentar wurde ein ung\u00fcltiges XML-Zeichen (Unicode: 0x{0}) gefunden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_PI"

    aput-object v3, v2, v4

    const-string v3, "In der Verarbeitungsanweisung wurde ein ung\u00fcltiges XML-Zeichen (Unicode: 0x{0}) gefunden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    aput-object v3, v2, v4

    const-string v3, "Im Inhalt von CDATASection wurde ein ung\u00fcltiges XML-Zeichen (Unicode: 0x{0}) gefunden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    aput-object v3, v2, v4

    const-string v3, "Ein ung\u00fcltiges XML-Zeichen  (Unicode: 0x{0}) wurde im Inhalt der Zeichendaten des Knotens gefunden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "wf-invalid-character-in-node-name"

    aput-object v3, v2, v4

    const-string v3, "Ung\u00fcltige XML-Zeichen wurden gefunden in {0} im Knoten \'\'{1}\'\'."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_DASH_IN_COMMENT"

    aput-object v3, v2, v4

    const-string v3, "Die Zeichenfolge \"--\" ist innerhalb von Kommentaren nicht zul\u00e4ssig."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_LT_IN_ATTVAL"

    aput-object v3, v2, v4

    const-string v3, "Der Wert des Attributs \"{1}\" mit einem Elementtyp \"{0}\" darf nicht das Zeichen \'\'<\'\' enthalten."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_REF_TO_UNPARSED_ENT"

    aput-object v3, v2, v4

    const-string v3, "Der syntaktisch nicht analysierte Entit\u00e4tenverweis \"&{0};\" ist nicht zul\u00e4ssig."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_REF_TO_EXTERNAL_ENT"

    aput-object v3, v2, v4

    const-string v3, "Der externe Entit\u00e4tenverweis \"&{0};\" ist in einem Attributwert nicht zul\u00e4ssig."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    aput-object v3, v2, v4

    const-string v3, "Das Pr\u00e4fix \"{0}\" kann nicht an den Namensbereich \"{1}\" gebunden werden."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NULL_LOCAL_ELEMENT_NAME"

    aput-object v3, v2, v4

    const-string v3, "Der lokale Name von Element \"{0}\" ist nicht angegeben."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NULL_LOCAL_ATTR_NAME"

    aput-object v3, v2, v4

    const-string v3, "Der lokale Name des Attributs \"{0}\" ist nicht angegeben."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unbound-prefix-in-entity-reference"

    aput-object v3, v2, v4

    const-string v3, "Der Ersatztext des Entit\u00e4tenknotens \"{0}\" enth\u00e4lt einen Elementknoten \"{1}\" mit einem nicht gebundenen Pr\u00e4fix \"{2}\"."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unbound-prefix-in-entity-reference"

    aput-object v3, v2, v4

    const-string v3, "Der Ersatztext des Entit\u00e4tenknotens \"{0}\" enth\u00e4lt einen Attributknoten \"{1}\" mit einem nicht gebundenen Pr\u00e4fix \"{2}\"."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    return-object v0
.end method
