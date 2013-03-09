.class public Lorg/apache/xml/serializer/utils/SerializerMessages_hu;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_hu.java"


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

    const-string v2, "A(z) \'\'{0}\'\' \u00fczenetkulcs nem tal\u00e1lhat\u00f3 a(z) \'\'{1}\'\' \u00fczenetoszt\u00e1lyban."

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "BAD_MSGFORMAT"

    aput-object v2, v1, v4

    const-string v2, "A(z) \'\'{1}\'\' \u00fczenetoszt\u00e1ly \'\'{0}\'\' \u00fczenet\u00e9nek form\u00e1tuma hib\u00e1s."

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    aput-object v2, v1, v4

    const-string v2, "A(z) \'\'{0}\'\' p\u00e9ld\u00e1nyos\u00edt\u00f3 oszt\u00e1ly nem val\u00f3s\u00edtja meg az org.xml.sax.ContentHandler f\u00fcggv\u00e9nyt."

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_RESOURCE_COULD_NOT_FIND"

    aput-object v3, v2, v4

    const-string v3, "A(z) [ {0} ] er\u0151forr\u00e1s nem tal\u00e1lhat\u00f3.\n {1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_RESOURCE_COULD_NOT_LOAD"

    aput-object v3, v2, v4

    const-string v3, "A(z) [ {0} ] er\u0151forr\u00e1st nem lehet bet\u00f6lteni: {1} \n {2} \t {3}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    aput-object v3, v2, v4

    const-string v3, "Pufferm\u00e9ret <= 0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_INVALID_UTF16_SURROGATE"

    aput-object v3, v2, v4

    const-string v3, "\u00c9rv\u00e9nytelen UTF-16 helyettes\u00edt\u00e9s: {0} ?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_OIERROR"

    aput-object v3, v2, v4

    const-string v3, "IO hiba"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    aput-object v3, v2, v4

    const-string v3, "Nem lehet {0} attrib\u00fatumot hozz\u00e1adni ut\u00f3d csom\u00f3pontok ut\u00e1n vagy egy elem el\u0151\u00e1ll\u00edt\u00e1sa el\u0151tt.  Az attrib\u00fatum figyelmen k\u00edv\u00fcl marad."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NAMESPACE_PREFIX"

    aput-object v3, v2, v4

    const-string v3, "A(z) \'\'{0}\'\' el\u0151tag n\u00e9vtere nincs deklar\u00e1lva."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_STRAY_ATTRIBUTE"

    aput-object v3, v2, v4

    const-string v3, "A(z) \'\'{0}\'\' attrib\u00fatum k\u00edv\u00fcl esik az elemen."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_STRAY_NAMESPACE"

    aput-object v3, v2, v4

    const-string v3, "A(z) \'\'{0}\'\'=\'\'{1}\'\' n\u00e9vt\u00e9rdeklar\u00e1ci\u00f3 k\u00edv\u00fcl esik az elemen."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_COULD_NOT_LOAD_RESOURCE"

    aput-object v3, v2, v4

    const-string v3, "Nem lehet bet\u00f6lteni \'\'{0}\'\' er\u0151forr\u00e1st (ellen\u0151rizze a CLASSPATH be\u00e1ll\u00edt\u00e1st), a rendszer az alap\u00e9rtelmez\u00e9seket haszn\u00e1lja."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_ILLEGAL_CHARACTER"

    aput-object v3, v2, v4

    const-string v3, "K\u00eds\u00e9rletet tett {0} \u00e9rt\u00e9k\u00e9nek karakteres ki\u00edr\u00e1s\u00e1ra, de nem jelen\u00edthet\u0151 meg a megadott {1} kimeneti k\u00f3dol\u00e1ssal."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    aput-object v3, v2, v4

    const-string v3, "Nem lehet bet\u00f6lteni a(z) \'\'{0}\'\' tulajdons\u00e1gf\u00e1jlt a(z) \'\'{1}\'\' met\u00f3dushoz (ellen\u0151rizze a CLASSPATH be\u00e1ll\u00edt\u00e1st)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_INVALID_PORT"

    aput-object v3, v2, v4

    const-string v3, "\u00c9rv\u00e9nytelen portsz\u00e1m"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PORT_WHEN_HOST_NULL"

    aput-object v3, v2, v4

    const-string v3, "A portot nem \u00e1ll\u00edthatja be, ha a hoszt null"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    aput-object v3, v2, v4

    const-string v3, "A hoszt nem j\u00f3l form\u00e1zott c\u00edm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_NOT_CONFORMANT"

    aput-object v3, v2, v4

    const-string v3, "A s\u00e9ma nem megfelel\u0151."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_FROM_NULL_STRING"

    aput-object v3, v2, v4

    const-string v3, "Nem lehet be\u00e1ll\u00edtani a s\u00e9m\u00e1t null karaktersorozatb\u00f3l"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    aput-object v3, v2, v4

    const-string v3, "Az el\u00e9r\u00e9si \u00fat \u00e9rv\u00e9nytelen vez\u00e9rl\u0151 jelsorozatot tartalmaz"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PATH_INVALID_CHAR"

    aput-object v3, v2, v4

    const-string v3, "Az el\u00e9r\u00e9si \u00fat \u00e9rv\u00e9nytelen karaktert tartalmaz: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_INVALID_CHAR"

    aput-object v3, v2, v4

    const-string v3, "A t\u00f6red\u00e9k \u00e9rv\u00e9nytelen karaktert tartalmaz"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_WHEN_PATH_NULL"

    aput-object v3, v2, v4

    const-string v3, "A t\u00f6red\u00e9ket nem \u00e1ll\u00edthatja be, ha az el\u00e9r\u00e9si \u00fat null"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_FOR_GENERIC_URI"

    aput-object v3, v2, v4

    const-string v3, "Csak \u00e1ltal\u00e1nos URI-hoz \u00e1ll\u00edthat be t\u00f6red\u00e9ket"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_SCHEME_IN_URI"

    aput-object v3, v2, v4

    const-string v3, "Nem tal\u00e1lhat\u00f3 s\u00e9ma az URI-ban"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    aput-object v3, v2, v4

    const-string v3, "Az URI nem inicializ\u00e1lhat\u00f3 \u00fcres param\u00e9terekkel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_FRAGMENT_STRING_IN_PATH"

    aput-object v3, v2, v4

    const-string v3, "Nem adhat meg t\u00f6red\u00e9ket az el\u00e9r\u00e9si \u00fatban \u00e9s a t\u00f6red\u00e9kben is"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_QUERY_STRING_IN_PATH"

    aput-object v3, v2, v4

    const-string v3, "Nem adhat meg lek\u00e9rdez\u00e9si karaktersorozatot az el\u00e9r\u00e9si \u00fatban \u00e9s a lek\u00e9rdez\u00e9si karaktersorozatban"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_PORT_IF_NO_HOST"

    aput-object v3, v2, v4

    const-string v3, "Nem adhatja meg a portot, ha nincs megadva hoszt"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_USERINFO_IF_NO_HOST"

    aput-object v3, v2, v4

    const-string v3, "Nem adhatja meg a felhaszn\u00e1l\u00f3i inform\u00e1ci\u00f3kat, ha nincs megadva hoszt"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_XML_VERSION_NOT_SUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "Figyelmeztet\u00e9s: A kimeneti dokumentum k\u00e9rt verzi\u00f3ja \'\'{0}\'\'.  Az XML ezen verzi\u00f3ja nem t\u00e1mogatott.  A kimeneti dokumentum verzi\u00f3ja \'\'1.0\'\' lesz."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_REQUIRED"

    aput-object v3, v2, v4

    const-string v3, "S\u00e9m\u00e1ra van sz\u00fcks\u00e9g!"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FACTORY_PROPERTY_MISSING"

    aput-object v3, v2, v4

    const-string v3, "A SerializerFactory oszt\u00e1lynak \u00e1tadott Properties objektumnak nincs \'\'{0}\'\' tulajdons\u00e1ga."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_ENCODING_NOT_SUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "Figyelmeztet\u00e9s: A(z) \'\'{0}\'\' k\u00f3dol\u00e1st nem t\u00e1mogatja a Java fut\u00e1si k\u00f6rnyezet."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "FEATURE_NOT_FOUND"

    aput-object v3, v2, v4

    const-string v3, "A(z) \'\'{0}\'\' param\u00e9ter nem ismerhet\u0151 fel."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "FEATURE_NOT_SUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "A(z) \'\'{0}\'\' param\u00e9ter ismert, de a k\u00e9rt \u00e9rt\u00e9k nem \u00e1ll\u00edthat\u00f3 be."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DOMSTRING_SIZE_ERR"

    aput-object v3, v2, v4

    const-string v3, "A l\u00e9trej\u00f6v\u0151 karaktersorozat t\u00fal hossz\u00fa, nem f\u00e9r el egy DOMString-ben: \'\'{0}\'\'."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "TYPE_MISMATCH_ERR"

    aput-object v3, v2, v4

    const-string v3, "A param\u00e9tern\u00e9v \u00e9rt\u00e9k\u00e9nek t\u00edpusa nem kompatibilis a v\u00e1rt t\u00edpussal."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "no-output-specified"

    aput-object v3, v2, v4

    const-string v3, "Az adatki\u00edr\u00e1s c\u00e9ljak\u00e9nt megadott \u00e9rt\u00e9k \u00fcres volt."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unsupported-encoding"

    aput-object v3, v2, v4

    const-string v3, "Nem t\u00e1mogatott k\u00f3dol\u00e1s."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_UNABLE_TO_SERIALIZE_NODE"

    aput-object v3, v2, v4

    const-string v3, "A csom\u00f3pont nem p\u00e9ld\u00e1nyos\u00edthat\u00f3."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "cdata-sections-splitted"

    aput-object v3, v2, v4

    const-string v3, "A CDATA szakasz legal\u00e1bb egy \']]>\' lez\u00e1r\u00f3 jelz\u0151t tartalmaz."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WARNING_WF_NOT_CHECKED"

    aput-object v3, v2, v4

    const-string v3, "A szab\u00e1lyos form\u00e1z\u00e1st ellen\u0151rz\u0151 p\u00e9ld\u00e1nyt nem siker\u00fclt l\u00e9trehozni.  A well-formed param\u00e9ter \u00e9rt\u00e9ke true, de a szab\u00e1lyos form\u00e1z\u00e1st nem lehet ellen\u0151rizni."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "wf-invalid-character"

    aput-object v3, v2, v4

    const-string v3, "A(z) \'\'{0}\'\' csom\u00f3pont \u00e9rv\u00e9nytelen XML karaktereket tartalmaz."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    aput-object v3, v2, v4

    const-string v3, "\u00c9rv\u00e9nytelen XML karakter (Unicode: 0x{0}) szerepelt a megjegyz\u00e9sben."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_PI"

    aput-object v3, v2, v4

    const-string v3, "\u00c9rv\u00e9nytelen XML karakter (Unicode: 0x{0}) szerepelt a feldolgoz\u00e1si utas\u00edt\u00e1sadatokban."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    aput-object v3, v2, v4

    const-string v3, "\u00c9rv\u00e9nytelen XML karakter (Unicode: 0x{0}) szerepelt a CDATASection tartalm\u00e1ban."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    aput-object v3, v2, v4

    const-string v3, "\u00c9rv\u00e9nytelen XML karakter (Unicode: 0x{0}) szerepelt a csom\u00f3pont karakteradat tartalm\u00e1ban."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "wf-invalid-character-in-node-name"

    aput-object v3, v2, v4

    const-string v3, "\u00c9rv\u00e9nytelen XML karakter tal\u00e1lhat\u00f3 a(z) \'\'{1}\'\' nev\u0171 {0} csom\u00f3pontban."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_DASH_IN_COMMENT"

    aput-object v3, v2, v4

    const-string v3, "A \"--\" karaktersorozat nem megengedett a megjegyz\u00e9sekben."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_LT_IN_ATTVAL"

    aput-object v3, v2, v4

    const-string v3, "A(z) \"{0}\" elemt\u00edpussal t\u00e1rs\u00edtott \"{1}\" attrib\u00fatum \u00e9rt\u00e9ke nem tartalmazhat \'\'<\'\' karaktert."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_REF_TO_UNPARSED_ENT"

    aput-object v3, v2, v4

    const-string v3, "Az \u00e9rtelmez\u00e9s n\u00e9lk\u00fcli \"&{0};\" entit\u00e1shivatkoz\u00e1s nem megengedett."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_REF_TO_EXTERNAL_ENT"

    aput-object v3, v2, v4

    const-string v3, "A(z) \"&{0};\" k\u00fcls\u0151 entit\u00e1shivatkoz\u00e1s nem megengedett egy attrib\u00fatum\u00e9rt\u00e9kben."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    aput-object v3, v2, v4

    const-string v3, "A(z) \"{0}\" el\u0151tag nem k\u00f6thet\u0151 a(z) \"{1}\" n\u00e9vt\u00e9rhez."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NULL_LOCAL_ELEMENT_NAME"

    aput-object v3, v2, v4

    const-string v3, "A(z) \"{0}\" elem helyi neve null."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NULL_LOCAL_ATTR_NAME"

    aput-object v3, v2, v4

    const-string v3, "A(z) \"{0}\" attrib\u00fatum helyi neve null."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unbound-prefix-in-entity-reference"

    aput-object v3, v2, v4

    const-string v3, "A(z) \"{0}\" entit\u00e1scsom\u00f3pont helyettes\u00edt\u0151 sz\u00f6vege a(z) \"{1}\" elemcsom\u00f3pontot tartalmazza, amelynek nem k\u00f6t\u00f6tt el\u0151tagja \"{2}\"."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unbound-prefix-in-entity-reference"

    aput-object v3, v2, v4

    const-string v3, "A(z) \"{0}\" entit\u00e1scsom\u00f3pont helyettes\u00edt\u0151 sz\u00f6vege a(z) \"{1}\" attrib\u00fatum-csom\u00f3pontot tartalmazza, amelynek nem k\u00f6t\u00f6tt el\u0151tagja \"{2}\"."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    return-object v0
.end method
