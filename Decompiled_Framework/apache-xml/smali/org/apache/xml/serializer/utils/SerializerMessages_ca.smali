.class public Lorg/apache/xml/serializer/utils/SerializerMessages_ca;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_ca.java"


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

    const-string v2, "La clau del missatge \'\'{0}\'\' no est\u00e0 a la classe del missatge \'\'{1}\'\'"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "BAD_MSGFORMAT"

    aput-object v2, v1, v4

    const-string v2, "El format del missatge \'\'{0}\'\' a la classe del missatge \'\'{1}\'\' ha fallat."

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    aput-object v2, v1, v4

    const-string v2, "La classe de serialitzador \'\'{0}\'\' no implementa org.xml.sax.ContentHandler."

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_RESOURCE_COULD_NOT_FIND"

    aput-object v3, v2, v4

    const-string v3, "No s\'\'ha trobat el recurs [ {0} ].\n {1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_RESOURCE_COULD_NOT_LOAD"

    aput-object v3, v2, v4

    const-string v3, "No s\'\'ha pogut carregar el recurs [ {0} ]: {1} \n {2} \t {3}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    aput-object v3, v2, v4

    const-string v3, "Grand\u00e0ria del buffer <=0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_INVALID_UTF16_SURROGATE"

    aput-object v3, v2, v4

    const-string v3, "S\'\'ha detectat un suplent UTF-16 no v\u00e0lid: {0} ?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_OIERROR"

    aput-object v3, v2, v4

    const-string v3, "Error d\'E/S"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    aput-object v3, v2, v4

    const-string v3, "No es pot afegir l\'\'atribut {0} despr\u00e9s dels nodes subordinats o abans que es produeixi un element. Es passar\u00e0 per alt l\'\'atribut."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NAMESPACE_PREFIX"

    aput-object v3, v2, v4

    const-string v3, "No s\'\'ha declarat l\'\'espai de noms pel prefix \'\'{0}\'\'."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_STRAY_ATTRIBUTE"

    aput-object v3, v2, v4

    const-string v3, "L\'\'atribut \'\'{0}\'\' es troba fora de l\'\'element."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_STRAY_NAMESPACE"

    aput-object v3, v2, v4

    const-string v3, "La declaraci\u00f3 de l\'\'espai de noms \'\'{0}\'\'=\'\'{1}\'\' es troba fora de l\'\'element."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_COULD_NOT_LOAD_RESOURCE"

    aput-object v3, v2, v4

    const-string v3, "No s\'\'ha pogut carregar \'\'{0}\'\' (comproveu CLASSPATH), ara s\'\'est\u00e0 fent servir els valors per defecte."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_ILLEGAL_CHARACTER"

    aput-object v3, v2, v4

    const-string v3, "S\'\'ha intentat un car\u00e0cter de sortida del valor integral {0} que no est\u00e0 representat a una codificaci\u00f3 de sortida especificada de {1}."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    aput-object v3, v2, v4

    const-string v3, "No s\'\'ha pogut carregar el fitxer de propietats \'\'{0}\'\' del m\u00e8tode de sortida \'\'{1}\'\' (comproveu CLASSPATH)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_INVALID_PORT"

    aput-object v3, v2, v4

    const-string v3, "N\u00famero de port no v\u00e0lid"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PORT_WHEN_HOST_NULL"

    aput-object v3, v2, v4

    const-string v3, "El port no es pot establir quan el sistema principal \u00e9s nul"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    aput-object v3, v2, v4

    const-string v3, "El format de l\'adre\u00e7a del sistema principal no \u00e9s el correcte"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_NOT_CONFORMANT"

    aput-object v3, v2, v4

    const-string v3, "L\'esquema no t\u00e9 conformitat."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_FROM_NULL_STRING"

    aput-object v3, v2, v4

    const-string v3, "No es pot establir un esquema des d\'una cadena nul\u00b7la"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    aput-object v3, v2, v4

    const-string v3, "La via d\'acc\u00e9s cont\u00e9 una seq\u00fc\u00e8ncia d\'escapament no v\u00e0lida"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PATH_INVALID_CHAR"

    aput-object v3, v2, v4

    const-string v3, "La via d\'\'acc\u00e9s cont\u00e9 un car\u00e0cter no v\u00e0lid {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_INVALID_CHAR"

    aput-object v3, v2, v4

    const-string v3, "El fragment cont\u00e9 un car\u00e0cter no v\u00e0lid"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_WHEN_PATH_NULL"

    aput-object v3, v2, v4

    const-string v3, "El fragment no es pot establir si la via d\'acc\u00e9s \u00e9s nul\u00b7la"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_FOR_GENERIC_URI"

    aput-object v3, v2, v4

    const-string v3, "El fragment nom\u00e9s es pot establir per a un URI gen\u00e8ric"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_SCHEME_IN_URI"

    aput-object v3, v2, v4

    const-string v3, "No s\'ha trobat cap esquema a l\'URI"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    aput-object v3, v2, v4

    const-string v3, "No es pot inicialitzar l\'URI amb par\u00e0metres buits"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_FRAGMENT_STRING_IN_PATH"

    aput-object v3, v2, v4

    const-string v3, "No es pot especificar un fragment tant en la via d\'acc\u00e9s com en el fragment"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_QUERY_STRING_IN_PATH"

    aput-object v3, v2, v4

    const-string v3, "No es pot especificar una cadena de consulta en la via d\'acc\u00e9s i la cadena de consulta"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_PORT_IF_NO_HOST"

    aput-object v3, v2, v4

    const-string v3, "No es pot especificar el port si no s\'especifica el sistema principal"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_USERINFO_IF_NO_HOST"

    aput-object v3, v2, v4

    const-string v3, "No es pot especificar informaci\u00f3 de l\'usuari si no s\'especifica el sistema principal"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_XML_VERSION_NOT_SUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "Av\u00eds: la versi\u00f3 del document de sortida s\'\'ha sol\u00b7licitat que sigui \'\'{0}\'\'. Aquesta versi\u00f3 de XML no est\u00e0 suportada. La versi\u00f3 del document de sortida ser\u00e0 \'\'1.0\'\'."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_REQUIRED"

    aput-object v3, v2, v4

    const-string v3, "Es necessita l\'esquema"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FACTORY_PROPERTY_MISSING"

    aput-object v3, v2, v4

    const-string v3, "L\'\'objecte de propietats passat a SerializerFactory no t\u00e9 cap propietat \'\'{0}\'\'."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_ENCODING_NOT_SUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "Av\u00eds: el temps d\'\'execuci\u00f3 de Java no d\u00f3na suport a la codificaci\u00f3 \'\'{0}\'\'."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "FEATURE_NOT_FOUND"

    aput-object v3, v2, v4

    const-string v3, "El par\u00e0metre \'\'{0}\'\' no es reconeix."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "FEATURE_NOT_SUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "El par\u00e0metre \'\'{0}\'\' es reconeix per\u00f2 el valor sol\u00b7licitat no es pot establir."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DOMSTRING_SIZE_ERR"

    aput-object v3, v2, v4

    const-string v3, "La cadena resultant \u00e9s massa llarga per cabre en una DOMString: \'\'{0}\'\'."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "TYPE_MISMATCH_ERR"

    aput-object v3, v2, v4

    const-string v3, "El tipus de valor per a aquest nom de par\u00e0metre \u00e9s incompatible amb el tipus de valor esperat."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "no-output-specified"

    aput-object v3, v2, v4

    const-string v3, "La destinaci\u00f3 de sortida per a les dades que s\'ha d\'escriure era nul\u00b7la."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unsupported-encoding"

    aput-object v3, v2, v4

    const-string v3, "S\'ha trobat una codificaci\u00f3 no suportada."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_UNABLE_TO_SERIALIZE_NODE"

    aput-object v3, v2, v4

    const-string v3, "El node no s\'ha pogut serialitzat."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "cdata-sections-splitted"

    aput-object v3, v2, v4

    const-string v3, "La secci\u00f3 CDATA cont\u00e9 un o m\u00e9s marcadors d\'acabament \']]>\'."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WARNING_WF_NOT_CHECKED"

    aput-object v3, v2, v4

    const-string v3, "No s\'ha pogut crear cap inst\u00e0ncia per comprovar si t\u00e9 un format correcte o no. El par\u00e0metre del tipus ben format es va establir en cert, per\u00f2 la comprovaci\u00f3 de format no s\'ha pogut realitzar."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "wf-invalid-character"

    aput-object v3, v2, v4

    const-string v3, "El node \'\'{0}\'\' cont\u00e9 car\u00e0cters XML no v\u00e0lids."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    aput-object v3, v2, v4

    const-string v3, "S\'\'ha trobat un car\u00e0cter XML no v\u00e0lid (Unicode: 0x{0}) en el comentari."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_PI"

    aput-object v3, v2, v4

    const-string v3, "S\'\'ha trobat un car\u00e0cter XML no v\u00e0lid (Unicode: 0x{0}) en les dades d\'\'instrucci\u00f3 de proc\u00e9s."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    aput-object v3, v2, v4

    const-string v3, "S\'\'ha trobat un car\u00e0cter XML no v\u00e0lid (Unicode: 0x\'\'{0})\'\' en els continguts de la CDATASection."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    aput-object v3, v2, v4

    const-string v3, "S\'\'ha trobat un car\u00e0cter XML no v\u00e0lid (Unicode: 0x\'\'{0})\'\' en el contingut de dades de car\u00e0cter del node."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "wf-invalid-character-in-node-name"

    aput-object v3, v2, v4

    const-string v3, "S\'\'han trobat car\u00e0cters XML no v\u00e0lids al node {0} anomenat \'\'{1}\'\'."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_DASH_IN_COMMENT"

    aput-object v3, v2, v4

    const-string v3, "La cadena \"--\" no est\u00e0 permesa dins dels comentaris."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_LT_IN_ATTVAL"

    aput-object v3, v2, v4

    const-string v3, "El valor d\'\'atribut \"{1}\" associat amb un tipus d\'\'element \"{0}\" no pot contenir el car\u00e0cter \'\'<\'\'."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_REF_TO_UNPARSED_ENT"

    aput-object v3, v2, v4

    const-string v3, "La refer\u00e8ncia de l\'\'entitat no analitzada \"&{0};\" no est\u00e0 permesa."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_REF_TO_EXTERNAL_ENT"

    aput-object v3, v2, v4

    const-string v3, "La refer\u00e8ncia externa de l\'\'entitat \"&{0};\" no est\u00e0 permesa en un valor d\'\'atribut."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    aput-object v3, v2, v4

    const-string v3, "El prefix \"{0}\" no es pot vincular a l\'\'espai de noms \"{1}\"."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NULL_LOCAL_ELEMENT_NAME"

    aput-object v3, v2, v4

    const-string v3, "El nom local de l\'\'element \"{0}\" \u00e9s nul."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NULL_LOCAL_ATTR_NAME"

    aput-object v3, v2, v4

    const-string v3, "El nom local d\'\'atr \"{0}\" \u00e9s nul."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unbound-prefix-in-entity-reference"

    aput-object v3, v2, v4

    const-string v3, "El text de recanvi del node de l\'\'entitat \"{0}\" cont\u00e9 un node d\'\'element \"{1}\" amb un prefix de no enlla\u00e7at \"{2}\"."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unbound-prefix-in-entity-reference"

    aput-object v3, v2, v4

    const-string v3, "El text de recanvi del node de l\'\'entitat \"{0}\" cont\u00e9 un node d\'\'atribut \"{1}\" amb un prefix de no enlla\u00e7at \"{2}\"."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    return-object v0
.end method
