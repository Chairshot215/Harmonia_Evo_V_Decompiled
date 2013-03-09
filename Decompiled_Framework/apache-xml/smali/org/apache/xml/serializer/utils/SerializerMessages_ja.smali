.class public Lorg/apache/xml/serializer/utils/SerializerMessages_ja;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_ja.java"


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

    const-string v2, "\u30e1\u30c3\u30bb\u30fc\u30b8\u30fb\u30ad\u30fc \'\'{0}\'\' \u306f\u30e1\u30c3\u30bb\u30fc\u30b8\u30fb\u30af\u30e9\u30b9 \'\'{1}\'\' \u306b\u3042\u308a\u307e\u305b\u3093\u3002"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "BAD_MSGFORMAT"

    aput-object v2, v1, v4

    const-string v2, "\u30e1\u30c3\u30bb\u30fc\u30b8\u30fb\u30af\u30e9\u30b9 \'\'{1}\'\' \u306e\u30e1\u30c3\u30bb\u30fc\u30b8 \'\'{0}\'\' \u306e\u30d5\u30a9\u30fc\u30de\u30c3\u30c8\u8a2d\u5b9a\u304c\u5931\u6557\u3057\u307e\u3057\u305f\u3002"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    aput-object v2, v1, v4

    const-string v2, "\u30b7\u30ea\u30a2\u30e9\u30a4\u30b6\u30fc\u30fb\u30af\u30e9\u30b9 \'\'{0}\'\' \u306f org.xml.sax.ContentHandler \u3092\u5b9f\u88c5\u3057\u307e\u305b\u3093\u3002"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_RESOURCE_COULD_NOT_FIND"

    aput-object v3, v2, v4

    const-string v3, "\u30ea\u30bd\u30fc\u30b9 [ {0} ] \u306f\u898b\u3064\u304b\u308a\u307e\u305b\u3093\u3067\u3057\u305f\u3002\n {1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_RESOURCE_COULD_NOT_LOAD"

    aput-object v3, v2, v4

    const-string v3, "\u30ea\u30bd\u30fc\u30b9 [ {0} ] \u3092\u30ed\u30fc\u30c9\u3067\u304d\u307e\u305b\u3093\u3067\u3057\u305f: {1} \n {2} \t {3}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    aput-object v3, v2, v4

    const-string v3, "\u30d0\u30c3\u30d5\u30a1\u30fc\u30fb\u30b5\u30a4\u30ba <=0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_INVALID_UTF16_SURROGATE"

    aput-object v3, v2, v4

    const-string v3, "\u7121\u52b9\u306a UTF-16 \u30b5\u30ed\u30b2\u30fc\u30c8\u304c\u691c\u51fa\u3055\u308c\u307e\u3057\u305f: {0} ?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_OIERROR"

    aput-object v3, v2, v4

    const-string v3, "\u5165\u51fa\u529b\u30a8\u30e9\u30fc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    aput-object v3, v2, v4

    const-string v3, "\u4e0b\u4f4d\u30ce\u30fc\u30c9\u306e\u5f8c\u307e\u305f\u306f\u8981\u7d20\u304c\u751f\u6210\u3055\u308c\u308b\u524d\u306b\u5c5e\u6027 {0} \u306f\u8ffd\u52a0\u3067\u304d\u307e\u305b\u3093\u3002  \u5c5e\u6027\u306f\u7121\u8996\u3055\u308c\u307e\u3059\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NAMESPACE_PREFIX"

    aput-object v3, v2, v4

    const-string v3, "\u63a5\u982d\u90e8 \'\'{0}\'\' \u306e\u540d\u524d\u7a7a\u9593\u304c\u5ba3\u8a00\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_STRAY_ATTRIBUTE"

    aput-object v3, v2, v4

    const-string v3, "\u5c5e\u6027 \'\'{0}\'\' \u304c\u8981\u7d20\u306e\u5916\u5074\u3067\u3059\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_STRAY_NAMESPACE"

    aput-object v3, v2, v4

    const-string v3, "\u540d\u524d\u7a7a\u9593\u5ba3\u8a00 \'\'{0}\'\'=\'\'{1}\'\' \u304c\u8981\u7d20\u306e\u5916\u5074\u3067\u3059\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_COULD_NOT_LOAD_RESOURCE"

    aput-object v3, v2, v4

    const-string v3, "\'\'{0}\'\' \u3092\u30ed\u30fc\u30c9\u3067\u304d\u307e\u305b\u3093\u3067\u3057\u305f (CLASSPATH \u3092\u78ba\u8a8d\u3057\u3066\u304f\u3060\u3055\u3044)\u3002\u73fe\u5728\u306f\u30c7\u30d5\u30a9\u30eb\u30c8\u306e\u3082\u306e\u306e\u307f\u3092\u4f7f\u7528\u3057\u3066\u3044\u307e\u3059\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_ILLEGAL_CHARACTER"

    aput-object v3, v2, v4

    const-string v3, "{1} \u306e\u6307\u5b9a\u3055\u308c\u305f\u51fa\u529b\u30a8\u30f3\u30b3\u30fc\u30c9\u3067\u8868\u305b\u306a\u3044\u6574\u6570\u5024 {0} \u306e\u6587\u5b57\u306e\u51fa\u529b\u3092\u8a66\u307f\u307e\u3057\u305f\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    aput-object v3, v2, v4

    const-string v3, "\u51fa\u529b\u30e1\u30bd\u30c3\u30c9 \'\'{1}\'\' \u306e\u30d7\u30ed\u30d1\u30c6\u30a3\u30fc\u30fb\u30d5\u30a1\u30a4\u30eb \'\'{0}\'\' \u3092\u30ed\u30fc\u30c9\u3067\u304d\u307e\u305b\u3093\u3067\u3057\u305f (CLASSPATH \u3092\u78ba\u8a8d\u3057\u3066\u304f\u3060\u3055\u3044)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_INVALID_PORT"

    aput-object v3, v2, v4

    const-string v3, "\u7121\u52b9\u306a\u30dd\u30fc\u30c8\u756a\u53f7"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PORT_WHEN_HOST_NULL"

    aput-object v3, v2, v4

    const-string v3, "\u30db\u30b9\u30c8\u304c\u30cc\u30eb\u3067\u3042\u308b\u3068\u30dd\u30fc\u30c8\u3092\u8a2d\u5b9a\u3067\u304d\u307e\u305b\u3093"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    aput-object v3, v2, v4

    const-string v3, "\u30db\u30b9\u30c8\u306f\u3046\u307e\u304f\u69cb\u6210\u3055\u308c\u305f\u30a2\u30c9\u30ec\u30b9\u3067\u3042\u308a\u307e\u305b\u3093"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_NOT_CONFORMANT"

    aput-object v3, v2, v4

    const-string v3, "\u30b9\u30ad\u30fc\u30e0\u306f\u4e00\u81f4\u3057\u3066\u3044\u307e\u305b\u3093\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_FROM_NULL_STRING"

    aput-object v3, v2, v4

    const-string v3, "\u30cc\u30eb\u30fb\u30b9\u30c8\u30ea\u30f3\u30b0\u304b\u3089\u306f\u30b9\u30ad\u30fc\u30e0\u3092\u8a2d\u5b9a\u3067\u304d\u307e\u305b\u3093"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    aput-object v3, v2, v4

    const-string v3, "\u30d1\u30b9\u306b\u7121\u52b9\u306a\u30a8\u30b9\u30b1\u30fc\u30d7\u30fb\u30b7\u30fc\u30b1\u30f3\u30b9\u304c\u542b\u307e\u308c\u3066\u3044\u307e\u3059"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PATH_INVALID_CHAR"

    aput-object v3, v2, v4

    const-string v3, "\u30d1\u30b9\u306b\u7121\u52b9\u6587\u5b57: {0} \u304c\u542b\u307e\u308c\u3066\u3044\u307e\u3059"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_INVALID_CHAR"

    aput-object v3, v2, v4

    const-string v3, "\u30d5\u30e9\u30b0\u30e1\u30f3\u30c8\u306b\u7121\u52b9\u6587\u5b57\u304c\u542b\u307e\u308c\u3066\u3044\u307e\u3059"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_WHEN_PATH_NULL"

    aput-object v3, v2, v4

    const-string v3, "\u30d1\u30b9\u304c\u30cc\u30eb\u3067\u3042\u308b\u3068\u30d5\u30e9\u30b0\u30e1\u30f3\u30c8\u3092\u8a2d\u5b9a\u3067\u304d\u307e\u305b\u3093"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_FOR_GENERIC_URI"

    aput-object v3, v2, v4

    const-string v3, "\u7dcf\u79f0 URI \u306e\u30d5\u30e9\u30b0\u30e1\u30f3\u30c8\u3057\u304b\u8a2d\u5b9a\u3067\u304d\u307e\u305b\u3093"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_SCHEME_IN_URI"

    aput-object v3, v2, v4

    const-string v3, "\u30b9\u30ad\u30fc\u30e0\u306f URI \u3067\u898b\u3064\u304b\u308a\u307e\u305b\u3093"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    aput-object v3, v2, v4

    const-string v3, "URI \u306f\u7a7a\u306e\u30d1\u30e9\u30e1\u30fc\u30bf\u30fc\u3092\u4f7f\u7528\u3057\u3066\u521d\u671f\u5316\u3067\u304d\u307e\u305b\u3093"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_FRAGMENT_STRING_IN_PATH"

    aput-object v3, v2, v4

    const-string v3, "\u30d5\u30e9\u30b0\u30e1\u30f3\u30c8\u306f\u30d1\u30b9\u3068\u30d5\u30e9\u30b0\u30e1\u30f3\u30c8\u306e\u4e21\u65b9\u306b\u6307\u5b9a\u3067\u304d\u307e\u305b\u3093"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_QUERY_STRING_IN_PATH"

    aput-object v3, v2, v4

    const-string v3, "\u7167\u4f1a\u30b9\u30c8\u30ea\u30f3\u30b0\u306f\u30d1\u30b9\u304a\u3088\u3073\u7167\u4f1a\u30b9\u30c8\u30ea\u30f3\u30b0\u5185\u306b\u6307\u5b9a\u3067\u304d\u307e\u305b\u3093"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_PORT_IF_NO_HOST"

    aput-object v3, v2, v4

    const-string v3, "\u30db\u30b9\u30c8\u304c\u6307\u5b9a\u3055\u308c\u3066\u3044\u306a\u3044\u5834\u5408\u306f\u30dd\u30fc\u30c8\u3092\u6307\u5b9a\u3057\u3066\u306f\u3044\u3051\u307e\u305b\u3093"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_USERINFO_IF_NO_HOST"

    aput-object v3, v2, v4

    const-string v3, "\u30db\u30b9\u30c8\u304c\u6307\u5b9a\u3055\u308c\u3066\u3044\u306a\u3044\u5834\u5408\u306f Userinfo \u3092\u6307\u5b9a\u3057\u3066\u306f\u3044\u3051\u307e\u305b\u3093"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_XML_VERSION_NOT_SUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "\u8b66\u544a: \u51fa\u529b\u6587\u66f8\u306e\u30d0\u30fc\u30b8\u30e7\u30f3\u3068\u3057\u3066 \'\'{0}\'\' \u304c\u8981\u6c42\u3055\u308c\u307e\u3057\u305f\u3002  \u3053\u306e\u30d0\u30fc\u30b8\u30e7\u30f3\u306e XML \u306f\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u307e\u305b\u3093\u3002  \u51fa\u529b\u6587\u66f8\u306e\u30d0\u30fc\u30b8\u30e7\u30f3\u306f \'\'1.0\'\' \u306b\u306a\u308a\u307e\u3059\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_REQUIRED"

    aput-object v3, v2, v4

    const-string v3, "\u30b9\u30ad\u30fc\u30e0\u304c\u5fc5\u8981\u3067\u3059\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FACTORY_PROPERTY_MISSING"

    aput-object v3, v2, v4

    const-string v3, "SerializerFactory \u306b\u6e21\u3055\u308c\u305f Properties \u30aa\u30d6\u30b8\u30a7\u30af\u30c8\u306b\u306f \'\'{0}\'\' \u30d7\u30ed\u30d1\u30c6\u30a3\u30fc\u304c\u3042\u308a\u307e\u305b\u3093\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_ENCODING_NOT_SUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "\u8b66\u544a:  \u30a8\u30f3\u30b3\u30fc\u30c9 \'\'{0}\'\' \u306f\u3053\u306e Java \u30e9\u30f3\u30bf\u30a4\u30e0\u3067\u306f\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "FEATURE_NOT_FOUND"

    aput-object v3, v2, v4

    const-string v3, "\u30d1\u30e9\u30e1\u30fc\u30bf\u30fc \'\'{0}\'\' \u306f\u8a8d\u8b58\u3055\u308c\u307e\u305b\u3093\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "FEATURE_NOT_SUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "\u30d1\u30e9\u30e1\u30fc\u30bf\u30fc \'\'{0}\'\' \u306f\u8a8d\u8b58\u3055\u308c\u307e\u3059\u304c\u3001\u8981\u6c42\u3055\u308c\u305f\u5024\u306f\u8a2d\u5b9a\u3067\u304d\u307e\u305b\u3093\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DOMSTRING_SIZE_ERR"

    aput-object v3, v2, v4

    const-string v3, "\u7d50\u679c\u306e\u30b9\u30c8\u30ea\u30f3\u30b0\u304c\u9577\u3059\u304e\u308b\u305f\u3081\u3001DOMString \u5185\u306b\u53ce\u307e\u308a\u307e\u305b\u3093: \'\'{0}\'\'\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "TYPE_MISMATCH_ERR"

    aput-object v3, v2, v4

    const-string v3, "\u3053\u306e\u30d1\u30e9\u30e1\u30fc\u30bf\u30fc\u540d\u306e\u5024\u306e\u578b\u306f\u3001\u671f\u5f85\u3055\u308c\u308b\u5024\u306e\u578b\u3068\u4e0d\u9069\u5408\u3067\u3059\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "no-output-specified"

    aput-object v3, v2, v4

    const-string v3, "\u66f8\u304d\u8fbc\u307e\u308c\u308b\u30c7\u30fc\u30bf\u306e\u51fa\u529b\u5b9b\u5148\u304c\u30cc\u30eb\u3067\u3059\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unsupported-encoding"

    aput-object v3, v2, v4

    const-string v3, "\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u306a\u3044\u30a8\u30f3\u30b3\u30fc\u30c9\u304c\u691c\u51fa\u3055\u308c\u307e\u3057\u305f\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_UNABLE_TO_SERIALIZE_NODE"

    aput-object v3, v2, v4

    const-string v3, "\u30ce\u30fc\u30c9\u3092\u76f4\u5217\u5316\u3067\u304d\u307e\u305b\u3093\u3067\u3057\u305f\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "cdata-sections-splitted"

    aput-object v3, v2, v4

    const-string v3, "CDATA \u30bb\u30af\u30b7\u30e7\u30f3\u306b 1 \u3064\u4ee5\u4e0a\u306e\u7d42\u4e86\u30de\u30fc\u30ab\u30fc \']]>\' \u304c\u542b\u307e\u308c\u3066\u3044\u307e\u3059\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WARNING_WF_NOT_CHECKED"

    aput-object v3, v2, v4

    const-string v3, "\u6574\u5f62\u5f0f\u6027\u30c1\u30a7\u30c3\u30ab\u30fc\u306e\u30a4\u30f3\u30b9\u30bf\u30f3\u30b9\u3092\u4f5c\u6210\u3067\u304d\u307e\u305b\u3093\u3067\u3057\u305f\u3002  well-formed \u30d1\u30e9\u30e1\u30fc\u30bf\u30fc\u306e\u8a2d\u5b9a\u306f true \u3067\u3057\u305f\u304c\u3001\u6574\u5f62\u5f0f\u6027\u306e\u691c\u67fb\u306f\u5b9f\u884c\u3067\u304d\u307e\u305b\u3093\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "wf-invalid-character"

    aput-object v3, v2, v4

    const-string v3, "\u30ce\u30fc\u30c9 \'\'{0}\'\' \u306b\u7121\u52b9\u306a XML \u6587\u5b57\u304c\u3042\u308a\u307e\u3059\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    aput-object v3, v2, v4

    const-string v3, "\u30b3\u30e1\u30f3\u30c8\u306e\u4e2d\u306b\u7121\u52b9\u306a XML \u6587\u5b57 (Unicode: 0x{0}) \u304c\u898b\u3064\u304b\u308a\u307e\u3057\u305f\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_PI"

    aput-object v3, v2, v4

    const-string v3, "\u51e6\u7406\u547d\u4ee4\u30c7\u30fc\u30bf\u306e\u4e2d\u306b\u7121\u52b9\u306a XML \u6587\u5b57 (Unicode: 0x{0}) \u304c\u898b\u3064\u304b\u308a\u307e\u3057\u305f\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    aput-object v3, v2, v4

    const-string v3, "CDATA \u30bb\u30af\u30b7\u30e7\u30f3\u306e\u4e2d\u306b\u7121\u52b9\u306a XML \u6587\u5b57 (Unicode: 0x{0}) \u304c\u898b\u3064\u304b\u308a\u307e\u3057\u305f\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    aput-object v3, v2, v4

    const-string v3, "\u30ce\u30fc\u30c9\u306e\u6587\u5b57\u30c7\u30fc\u30bf\u306e\u5185\u5bb9\u306b\u7121\u52b9\u306a XML \u6587\u5b57 (Unicode: 0x{0}) \u304c\u898b\u3064\u304b\u308a\u307e\u3057\u305f\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "wf-invalid-character-in-node-name"

    aput-object v3, v2, v4

    const-string v3, "\'\'{1}\'\' \u3068\u3044\u3046\u540d\u524d\u306e {0} \u30ce\u30fc\u30c9\u306e\u4e2d\u306b\u7121\u52b9\u306a XML \u6587\u5b57\u304c\u898b\u3064\u304b\u308a\u307e\u3057\u305f\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_DASH_IN_COMMENT"

    aput-object v3, v2, v4

    const-string v3, "\u30b9\u30c8\u30ea\u30f3\u30b0 \"--\" \u306f\u30b3\u30e1\u30f3\u30c8\u5185\u3067\u306f\u4f7f\u7528\u3067\u304d\u307e\u305b\u3093\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_LT_IN_ATTVAL"

    aput-object v3, v2, v4

    const-string v3, "\u8981\u7d20\u578b \"{0}\" \u306b\u95a2\u9023\u3057\u305f\u5c5e\u6027 \"{1}\" \u306e\u5024\u306b\u306f \'\'<\'\' \u6587\u5b57\u3092\u542b\u3081\u3066\u306f\u3044\u3051\u307e\u305b\u3093\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_REF_TO_UNPARSED_ENT"

    aput-object v3, v2, v4

    const-string v3, "\u89e3\u6790\u5bfe\u8c61\u5916\u5b9f\u4f53\u53c2\u7167 \"&{0};\" \u306f\u8a31\u53ef\u3055\u308c\u307e\u305b\u3093\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_REF_TO_EXTERNAL_ENT"

    aput-object v3, v2, v4

    const-string v3, "\u5c5e\u6027\u5024\u3067\u306e\u5916\u90e8\u5b9f\u4f53\u53c2\u7167 \"&{0};\" \u306f\u8a31\u53ef\u3055\u308c\u307e\u305b\u3093\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    aput-object v3, v2, v4

    const-string v3, "\u63a5\u982d\u90e8 \"{0}\" \u306f\u540d\u524d\u7a7a\u9593 \"{1}\" \u306b\u7d50\u5408\u3067\u304d\u307e\u305b\u3093\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NULL_LOCAL_ELEMENT_NAME"

    aput-object v3, v2, v4

    const-string v3, "\u8981\u7d20 \"{0}\" \u306e\u30ed\u30fc\u30ab\u30eb\u540d\u304c\u30cc\u30eb\u3067\u3059\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NULL_LOCAL_ATTR_NAME"

    aput-object v3, v2, v4

    const-string v3, "\u5c5e\u6027 \"{0}\" \u306e\u30ed\u30fc\u30ab\u30eb\u540d\u304c\u30cc\u30eb\u3067\u3059\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unbound-prefix-in-entity-reference"

    aput-object v3, v2, v4

    const-string v3, "\u5b9f\u4f53\u30ce\u30fc\u30c9 \"{0}\" \u306e\u7f6e\u63db\u30c6\u30ad\u30b9\u30c8\u306b\u3001\u672a\u7d50\u5408\u306e\u63a5\u982d\u90e8 \"{2}\" \u3092\u6301\u3064\u8981\u7d20\u30ce\u30fc\u30c9 \"{1}\" \u304c\u542b\u307e\u308c\u3066\u3044\u307e\u3059\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unbound-prefix-in-entity-reference"

    aput-object v3, v2, v4

    const-string v3, "\u5b9f\u4f53\u30ce\u30fc\u30c9 \"{0}\" \u306e\u7f6e\u63db\u30c6\u30ad\u30b9\u30c8\u306b\u3001\u672a\u7d50\u5408\u306e\u63a5\u982d\u90e8 \"{2}\" \u3092\u6301\u3064\u5c5e\u6027\u30ce\u30fc\u30c9 \"{1}\" \u304c\u542b\u307e\u308c\u3066\u3044\u307e\u3059\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    return-object v0
.end method
