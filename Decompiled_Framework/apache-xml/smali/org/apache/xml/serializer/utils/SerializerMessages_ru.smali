.class public Lorg/apache/xml/serializer/utils/SerializerMessages_ru;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_ru.java"


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

    const-string v2, "\u041a\u043b\u044e\u0447 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f \'\'{0}\'\' \u043d\u0435 \u043e\u0442\u043d\u043e\u0441\u0438\u0442\u0441\u044f \u043a \u043a\u043b\u0430\u0441\u0441\u0443 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f \'\'{1}\'\'"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "BAD_MSGFORMAT"

    aput-object v2, v1, v4

    const-string v2, "\u0424\u043e\u0440\u043c\u0430\u0442 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f \'\'{0}\'\' \u0432 \u043a\u043b\u0430\u0441\u0441\u0435 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f \'\'{1}\'\' \u0432\u044b\u0437\u0432\u0430\u043b \u043e\u0448\u0438\u0431\u043a\u0443. "

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    aput-object v2, v1, v4

    const-string v2, "\u041a\u043b\u0430\u0441\u0441 \u0441\u0435\u0440\u0438\u0430\u043b\u0438\u0437\u0430\u0442\u043e\u0440\u0430 \'\'{0}\'\' \u043d\u0435 \u043f\u0440\u0438\u043c\u0435\u043d\u044f\u0435\u0442 org.xml.sax.ContentHandler. "

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_RESOURCE_COULD_NOT_FIND"

    aput-object v3, v2, v4

    const-string v3, "\u0420\u0435\u0441\u0443\u0440\u0441 [ {0} ] \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d.\n {1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_RESOURCE_COULD_NOT_LOAD"

    aput-object v3, v2, v4

    const-string v3, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0437\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c \u0440\u0435\u0441\u0443\u0440\u0441 [ {0} ]: {1} \n {2} \t {3}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    aput-object v3, v2, v4

    const-string v3, "\u0420\u0430\u0437\u043c\u0435\u0440 \u0431\u0443\u0444\u0435\u0440\u0430 <=0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_INVALID_UTF16_SURROGATE"

    aput-object v3, v2, v4

    const-string v3, "\u041e\u0431\u043d\u0430\u0440\u0443\u0436\u0435\u043d\u043e \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u043e\u0435 \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u0435 UTF-16: {0} ?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_OIERROR"

    aput-object v3, v2, v4

    const-string v3, "\u041e\u0448\u0438\u0431\u043a\u0430 \u0432\u0432\u043e\u0434\u0430-\u0432\u044b\u0432\u043e\u0434\u0430"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    aput-object v3, v2, v4

    const-string v3, "\u0410\u0442\u0440\u0438\u0431\u0443\u0442 {0} \u043d\u0435\u043b\u044c\u0437\u044f \u0434\u043e\u0431\u0430\u0432\u043b\u044f\u0442\u044c \u043f\u043e\u0441\u043b\u0435 \u0434\u043e\u0447\u0435\u0440\u043d\u0438\u0445 \u0443\u0437\u043b\u043e\u0432 \u0438 \u0434\u043e \u0441\u043e\u0437\u0434\u0430\u043d\u0438\u044f \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u0430. \u0410\u0442\u0440\u0438\u0431\u0443\u0442 \u0431\u0443\u0434\u0435\u0442 \u043f\u0440\u043e\u0438\u0433\u043d\u043e\u0440\u0438\u0440\u043e\u0432\u0430\u043d. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NAMESPACE_PREFIX"

    aput-object v3, v2, v4

    const-string v3, "\u041f\u0440\u043e\u0441\u0442\u0440\u0430\u043d\u0441\u0442\u0432\u043e \u0438\u043c\u0435\u043d \u0434\u043b\u044f \u043f\u0440\u0435\u0444\u0438\u043a\u0441\u0430 \'\'{0}\'\' \u043d\u0435 \u043e\u0431\u044a\u044f\u0432\u043b\u0435\u043d\u043e. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_STRAY_ATTRIBUTE"

    aput-object v3, v2, v4

    const-string v3, "\u0410\u0442\u0440\u0438\u0431\u0443\u0442 \'\'{0}\'\' \u0432\u043d\u0435 \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u0430. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_STRAY_NAMESPACE"

    aput-object v3, v2, v4

    const-string v3, "\u041e\u0431\u044a\u044f\u0432\u043b\u0435\u043d\u0438\u0435 \u043f\u0440\u043e\u0441\u0442\u0440\u0430\u043d\u0441\u0442\u0432\u0430 \u0438\u043c\u0435\u043d \'\'{0}\'\'=\'\'{1}\'\' \u0432\u043d\u0435 \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u0430. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_COULD_NOT_LOAD_RESOURCE"

    aput-object v3, v2, v4

    const-string v3, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0437\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c \'\'{0}\'\' (\u043f\u0440\u043e\u0432\u0435\u0440\u044c\u0442\u0435 CLASSPATH), \u043f\u0440\u0438\u043c\u0435\u043d\u044f\u044e\u0442\u0441\u044f \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u044f \u043f\u043e \u0443\u043c\u043e\u043b\u0447\u0430\u043d\u0438\u044e"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_ILLEGAL_CHARACTER"

    aput-object v3, v2, v4

    const-string v3, "\u041f\u043e\u043f\u044b\u0442\u043a\u0430 \u0432\u044b\u0432\u043e\u0434\u0430 \u0441\u0438\u043c\u0432\u043e\u043b\u0430, \u0438\u043d\u0442\u0435\u0433\u0440\u0430\u043b\u044c\u043d\u043e\u0435 \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u0435 {0} \u043a\u043e\u0442\u043e\u0440\u043e\u0433\u043e \u043d\u0435 \u043f\u0440\u0435\u0434\u0441\u0442\u0430\u0432\u043b\u0435\u043d\u043e \u0432 \u0443\u043a\u0430\u0437\u0430\u043d\u043d\u043e\u0439 \u043a\u043e\u0434\u0438\u0440\u043e\u0432\u043a\u0435 \u0432\u044b\u0432\u043e\u0434\u0430 {1}. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    aput-object v3, v2, v4

    const-string v3, "\u041d\u0435\u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0437\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c \u0444\u0430\u0439\u043b \u0441\u0432\u043e\u0439\u0441\u0442\u0432 \'\'{0}\'\' \u0434\u043b\u044f \u043c\u0435\u0442\u043e\u0434\u0430 \u0432\u044b\u0432\u043e\u0434\u0430 \'\'{1}\'\' (\u043f\u0440\u043e\u0432\u0435\u0440\u044c\u0442\u0435 CLASSPATH)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_INVALID_PORT"

    aput-object v3, v2, v4

    const-string v3, "\u041d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0439 \u043d\u043e\u043c\u0435\u0440 \u043f\u043e\u0440\u0442\u0430"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PORT_WHEN_HOST_NULL"

    aput-object v3, v2, v4

    const-string v3, "\u041d\u0435\u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0437\u0430\u0434\u0430\u0442\u044c \u043f\u043e\u0440\u0442 \u0434\u043b\u044f \u043f\u0443\u0441\u0442\u043e\u0433\u043e \u0430\u0434\u0440\u0435\u0441\u0430 \u0445\u043e\u0441\u0442\u0430"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    aput-object v3, v2, v4

    const-string v3, "\u041d\u0435\u043f\u0440\u0430\u0432\u0438\u043b\u044c\u043d\u043e \u0441\u0444\u043e\u0440\u043c\u0438\u0440\u043e\u0432\u0430\u043d \u0430\u0434\u0440\u0435\u0441 \u0445\u043e\u0441\u0442\u0430"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_NOT_CONFORMANT"

    aput-object v3, v2, v4

    const-string v3, "\u0421\u0445\u0435\u043c\u0430 \u043d\u0435 \u043a\u043e\u043d\u0444\u043e\u0440\u043c\u0430\u0442\u0438\u0432\u043d\u0430."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_FROM_NULL_STRING"

    aput-object v3, v2, v4

    const-string v3, "\u041d\u0435\u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0437\u0430\u0434\u0430\u0442\u044c \u0441\u0445\u0435\u043c\u0443 \u0434\u043b\u044f \u043f\u0443\u0441\u0442\u043e\u0439 \u0441\u0442\u0440\u043e\u043a\u0438"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    aput-object v3, v2, v4

    const-string v3, "\u0412 \u0438\u043c\u0435\u043d\u0438 \u043f\u0443\u0442\u0438 \u0432\u0441\u0442\u0440\u0435\u0447\u0430\u0435\u0442\u0441\u044f \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u0430\u044f Esc-\u043f\u043e\u0441\u043b\u0435\u0434\u043e\u0432\u0430\u0442\u0435\u043b\u044c\u043d\u043e\u0441\u0442\u044c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PATH_INVALID_CHAR"

    aput-object v3, v2, v4

    const-string v3, "\u0412 \u0438\u043c\u0435\u043d\u0438 \u043f\u0443\u0442\u0438 \u043e\u0431\u043d\u0430\u0440\u0443\u0436\u0435\u043d \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0439 \u0441\u0438\u043c\u0432\u043e\u043b: {0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_INVALID_CHAR"

    aput-object v3, v2, v4

    const-string v3, "\u0424\u0440\u0430\u0433\u043c\u0435\u043d\u0442 \u0441\u043e\u0434\u0435\u0440\u0436\u0438\u0442 \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0439 \u0441\u0438\u043c\u0432\u043e\u043b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_WHEN_PATH_NULL"

    aput-object v3, v2, v4

    const-string v3, "\u041d\u0435\u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0437\u0430\u0434\u0430\u0442\u044c \u0444\u0440\u0430\u0433\u043c\u0435\u043d\u0442 \u0434\u043b\u044f \u043f\u0443\u0441\u0442\u043e\u0433\u043e \u043f\u0443\u0442\u0438"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_FOR_GENERIC_URI"

    aput-object v3, v2, v4

    const-string v3, "\u0424\u0440\u0430\u0433\u043c\u0435\u043d\u0442 \u043c\u043e\u0436\u043d\u043e \u0437\u0430\u0434\u0430\u0442\u044c \u0442\u043e\u043b\u044c\u043a\u043e \u0434\u043b\u044f \u0448\u0430\u0431\u043b\u043e\u043d\u0430 URI"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_SCHEME_IN_URI"

    aput-object v3, v2, v4

    const-string v3, "\u0412 URI \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d\u0430 \u0441\u0445\u0435\u043c\u0430"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    aput-object v3, v2, v4

    const-string v3, "\u041d\u0435\u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0438\u043d\u0438\u0446\u0438\u0430\u043b\u0438\u0437\u0438\u0440\u043e\u0432\u0430\u0442\u044c URI \u0441 \u043f\u0443\u0441\u0442\u044b\u043c\u0438 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0430\u043c\u0438"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_FRAGMENT_STRING_IN_PATH"

    aput-object v3, v2, v4

    const-string v3, "\u041d\u0435\u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0437\u0430\u0434\u0430\u0442\u044c \u0444\u0440\u0430\u0433\u043c\u0435\u043d\u0442 \u043e\u0434\u043d\u043e\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e \u0434\u043b\u044f \u043f\u0443\u0442\u0438 \u0438 \u0444\u0440\u0430\u0433\u043c\u0435\u043d\u0442\u0430"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_QUERY_STRING_IN_PATH"

    aput-object v3, v2, v4

    const-string v3, "\u041d\u0435\u043b\u044c\u0437\u044f \u0443\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0441\u0442\u0440\u043e\u043a\u0443 \u0437\u0430\u043f\u0440\u043e\u0441\u0430 \u0432 \u0441\u0442\u0440\u043e\u043a\u0435 \u043f\u0443\u0442\u0438 \u0438 \u0437\u0430\u043f\u0440\u043e\u0441\u0430"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_PORT_IF_NO_HOST"

    aput-object v3, v2, v4

    const-string v3, "\u041d\u0435\u043b\u044c\u0437\u044f \u0443\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u043f\u043e\u0440\u0442, \u0435\u0441\u043b\u0438 \u043d\u0435 \u0437\u0430\u0434\u0430\u043d \u0445\u043e\u0441\u0442"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_USERINFO_IF_NO_HOST"

    aput-object v3, v2, v4

    const-string v3, "\u041d\u0435\u043b\u044c\u0437\u044f \u0443\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0438\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044e \u043e \u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u0435, \u0435\u0441\u043b\u0438 \u043d\u0435 \u0437\u0430\u0434\u0430\u043d \u0445\u043e\u0441\u0442"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_XML_VERSION_NOT_SUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "\u041f\u0440\u0435\u0434\u0443\u043f\u0440\u0435\u0436\u0434\u0435\u043d\u0438\u0435: \u041d\u0435\u043e\u0431\u0445\u043e\u0434\u0438\u043c\u0430 \u0432\u0435\u0440\u0441\u0438\u044f \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0430 \u0432\u044b\u0432\u043e\u0434\u0430 \'\'{0}\'\'. \u042d\u0442\u0430 \u0432\u0435\u0440\u0441\u0438\u044f XML \u043d\u0435 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u0435\u0442\u0441\u044f. \u0412\u0435\u0440\u0441\u0438\u0435\u0439 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0430 \u0432\u044b\u0432\u043e\u0434\u0430 \u0431\u0443\u0434\u0435\u0442 \'\'1.0\'\'. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_REQUIRED"

    aput-object v3, v2, v4

    const-string v3, "\u041d\u0435\u043e\u0431\u0445\u043e\u0434\u0438\u043c\u0430 \u0441\u0445\u0435\u043c\u0430!"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FACTORY_PROPERTY_MISSING"

    aput-object v3, v2, v4

    const-string v3, "\u041e\u0431\u044a\u0435\u043a\u0442 \u0441\u0432\u043e\u0439\u0441\u0442\u0432, \u043f\u0435\u0440\u0435\u0434\u0430\u043d\u043d\u044b\u0439 \u0432 SerializerFactory, \u043d\u0435 \u043e\u0431\u043b\u0430\u0434\u0430\u0435\u0442 \u0441\u0432\u043e\u0439\u0441\u0442\u0432\u043e\u043c \'\'{0}\'\'. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_ENCODING_NOT_SUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "\u041f\u0440\u0435\u0434\u0443\u043f\u0440\u0435\u0436\u0434\u0435\u043d\u0438\u0435:  \u041a\u043e\u0434\u0438\u0440\u043e\u0432\u043a\u0430 \'\'{0}\'\' \u043d\u0435 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u0435\u0442\u0441\u044f \u0441\u0440\u0435\u0434\u043e\u0439 \u0432\u044b\u043f\u043e\u043b\u043d\u0435\u043d\u0438\u044f Java."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "FEATURE_NOT_FOUND"

    aput-object v3, v2, v4

    const-string v3, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440 \'\'{0}\'\' \u043d\u0435 \u0440\u0430\u0441\u043f\u043e\u0437\u043d\u0430\u043d. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "FEATURE_NOT_SUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440 \'\'{0}\'\' \u0440\u0430\u0441\u043f\u043e\u0437\u043d\u0430\u043d, \u043d\u043e \u0437\u0430\u043f\u0440\u043e\u0448\u0435\u043d\u043d\u043e\u0435 \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u0435 \u0437\u0430\u0434\u0430\u0442\u044c \u043d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DOMSTRING_SIZE_ERR"

    aput-object v3, v2, v4

    const-string v3, "\u0421\u0442\u0440\u043e\u043a\u0430 \u0440\u0435\u0437\u0443\u043b\u044c\u0442\u0430\u0442\u0430 \u0441\u043b\u0438\u0448\u043a\u043e\u043c \u0434\u043b\u0438\u043d\u043d\u0430\u044f \u0434\u043b\u044f \u0440\u0430\u0437\u043c\u0435\u0449\u0435\u043d\u0438\u044f \u0432 DOMString: \'\'{0}\'\'. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "TYPE_MISMATCH_ERR"

    aput-object v3, v2, v4

    const-string v3, "\u0422\u0438\u043f \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u044f \u0434\u043b\u044f \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0430 \u0441 \u044d\u0442\u0438 \u0438\u043c\u0435\u043d\u0435\u043c \u043d\u0435\u0441\u043e\u0432\u043c\u0435\u0441\u0442\u0438\u043c \u0441 \u043e\u0436\u0438\u0434\u0430\u0435\u043c\u044b\u043c \u0442\u0438\u043f\u043e\u043c \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u044f. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "no-output-specified"

    aput-object v3, v2, v4

    const-string v3, "\u041d\u0435 \u0443\u043a\u0430\u0437\u0430\u043d \u0446\u0435\u043b\u0435\u0432\u043e\u0439 \u043a\u0430\u0442\u0430\u043b\u043e\u0433 \u0434\u043b\u044f \u0432\u044b\u0432\u043e\u0434\u0430 \u0434\u0430\u043d\u043d\u044b\u0445. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unsupported-encoding"

    aput-object v3, v2, v4

    const-string v3, "\u041e\u0431\u043d\u0430\u0440\u0443\u0436\u0435\u043d\u0430 \u043d\u0435\u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u0435\u043c\u0430\u044f \u043a\u043e\u0434\u0438\u0440\u043e\u0432\u043a\u0430. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_UNABLE_TO_SERIALIZE_NODE"

    aput-object v3, v2, v4

    const-string v3, "\u041d\u0435\u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0441\u0435\u0440\u0438\u0430\u043b\u0438\u0437\u043e\u0432\u0430\u0442\u044c \u0443\u0437\u0435\u043b. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "cdata-sections-splitted"

    aput-object v3, v2, v4

    const-string v3, "\u0420\u0430\u0437\u0434\u0435\u043b CDATA \u0441\u043e\u0434\u0435\u0440\u0436\u0438\u0442 \u043e\u0434\u0438\u043d \u0438\u043b\u0438 \u043d\u0435\u0441\u043a\u043e\u043b\u044c\u043a\u043e \u043c\u0430\u0440\u043a\u0435\u0440\u043e\u0432 \u0440\u0430\u0437\u0434\u0435\u043b\u0438\u0442\u0435\u043b\u0435\u0439 \']]>\'. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WARNING_WF_NOT_CHECKED"

    aput-object v3, v2, v4

    const-string v3, "\u041d\u0435\u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0441\u043e\u0437\u0434\u0430\u0442\u044c \u044d\u043a\u0437\u0435\u043c\u043f\u043b\u044f\u0440 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0438 \u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u043e\u0441\u0442\u0438. \u0414\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0439 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440 \u0438\u043c\u0435\u0435\u0442 \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u0435 true, \u043d\u043e \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0443 \u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u043e\u0441\u0442\u0438 \u0432\u044b\u043f\u043e\u043b\u043d\u0438\u0442\u044c \u043d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "wf-invalid-character"

    aput-object v3, v2, v4

    const-string v3, "\u0423\u0437\u0435\u043b \'\'{0}\'\' \u0441\u043e\u0434\u0435\u0440\u0436\u0438\u0442 \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0435 \u0441\u0438\u043c\u0432\u043e\u043b\u044b XML. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    aput-object v3, v2, v4

    const-string v3, "\u0412 \u043a\u043e\u043c\u043c\u0435\u043d\u0442\u0430\u0440\u0438\u0438 \u043e\u0431\u043d\u0430\u0440\u0443\u0436\u0435\u043d \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0439 \u0441\u0438\u043c\u0432\u043e\u043b XML (\u042e\u043d\u0438\u043a\u043e\u0434: 0x{0})."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_PI"

    aput-object v3, v2, v4

    const-string v3, "\u041f\u0440\u0438 \u043e\u0431\u0440\u0430\u0431\u043e\u0442\u043a\u0435 instructiondata \u0431\u044b\u043b \u043e\u0431\u043d\u0430\u0440\u0443\u0436\u0435\u043d \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0439 \u0441\u0438\u043c\u0432\u043e\u043b XML (\u042e\u043d\u0438\u043a\u043e\u0434: 0x{0}). "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    aput-object v3, v2, v4

    const-string v3, "\u0412 \u0441\u043e\u0434\u0435\u0440\u0436\u0438\u043c\u043e\u043c CDATASection \u043e\u0431\u043d\u0430\u0440\u0443\u0436\u0435\u043d \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0439 \u0441\u0438\u043c\u0432\u043e\u043b XML (\u042e\u043d\u0438\u043a\u043e\u0434: 0x{0})."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    aput-object v3, v2, v4

    const-string v3, "\u0412 \u0441\u043e\u0434\u0435\u0440\u0436\u0438\u043c\u043e\u043c \u0441\u0438\u043c\u0432\u043e\u043b\u044c\u043d\u044b\u0445 \u0434\u0430\u043d\u043d\u044b\u0445 \u0443\u0437\u043b\u0430 \u043e\u0431\u043d\u0430\u0440\u0443\u0436\u0435\u043d \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0439 \u0441\u0438\u043c\u0432\u043e\u043b XML (\u042e\u043d\u0438\u043a\u043e\u0434: 0x{0})."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "wf-invalid-character-in-node-name"

    aput-object v3, v2, v4

    const-string v3, "\u041d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0435 \u0441\u0438\u043c\u0432\u043e\u043b\u044b XML \u043e\u0431\u043d\u0430\u0440\u0443\u0436\u0435\u043d\u044b \u0432 \u0443\u0437\u043b\u0435 {0} \u0441 \u0438\u043c\u0435\u043d\u0435\u043c \'\'{1}\'\'. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_DASH_IN_COMMENT"

    aput-object v3, v2, v4

    const-string v3, "\u0421\u0442\u0440\u043e\u043a\u0430 \"--\" \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u0430 \u0432 \u043a\u043e\u043c\u043c\u0435\u043d\u0442\u0430\u0440\u0438\u0438. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_LT_IN_ATTVAL"

    aput-object v3, v2, v4

    const-string v3, "\u0417\u043d\u0430\u0447\u0435\u043d\u0438\u0435 \u0430\u0442\u0440\u0438\u0431\u0443\u0442\u0430 \"{1}\", \u0441\u0432\u044f\u0437\u0430\u043d\u043d\u043e\u0433\u043e \u0441 \u0442\u0438\u043f\u043e\u043c \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u0430 \"{0}\", \u043d\u0435 \u0434\u043e\u043b\u0436\u043d\u043e \u0441\u043e\u0434\u0435\u0440\u0436\u0430\u0442\u044c \u0441\u0438\u043c\u0432\u043e\u043b \'\'<\'\'. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_REF_TO_UNPARSED_ENT"

    aput-object v3, v2, v4

    const-string v3, "\u041d\u0435\u043e\u0431\u0440\u0430\u0431\u043e\u0442\u0430\u043d\u043d\u0430\u044f \u0441\u0441\u044b\u043b\u043a\u0430 \u043d\u0430 \u044d\u043b\u0435\u043c\u0435\u043d\u0442 \"&{0};\" \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u0430. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_REF_TO_EXTERNAL_ENT"

    aput-object v3, v2, v4

    const-string v3, "\u0412\u043d\u0435\u0448\u043d\u044f\u044f \u0441\u0441\u044b\u043b\u043a\u0430 \u043d\u0430 \u044d\u043b\u0435\u043c\u0435\u043d\u0442 \"&{0};\" \u043d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u0430 \u0432 \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u0438 \u0430\u0442\u0440\u0438\u0431\u0443\u0442\u0430. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    aput-object v3, v2, v4

    const-string v3, "\u041f\u0440\u0435\u0444\u0438\u043a\u0441 \"{0}\" \u043d\u0435 \u043c\u043e\u0436\u0435\u0442 \u043d\u0430\u0445\u043e\u0434\u0438\u0442\u044c\u0441\u044f \u0432 \u043f\u0440\u043e\u0441\u0442\u0440\u0430\u043d\u0441\u0442\u0432\u0435  \u0438\u043c\u0435\u043d \"{1}\". "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NULL_LOCAL_ELEMENT_NAME"

    aput-object v3, v2, v4

    const-string v3, "\u041b\u043e\u043a\u0430\u043b\u044c\u043d\u043e\u0435 \u0438\u043c\u044f \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u0430 \"{0}\" \u043f\u0443\u0441\u0442\u043e. "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NULL_LOCAL_ATTR_NAME"

    aput-object v3, v2, v4

    const-string v3, "\u041b\u043e\u043a\u0430\u043b\u044c\u043d\u043e\u0435 \u0438\u043c\u044f \u0430\u0442\u0440\u0438\u0431\u0443\u0442\u0430 \"{0}\" \u043f\u0443\u0441\u0442\u043e.  "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unbound-prefix-in-entity-reference"

    aput-object v3, v2, v4

    const-string v3, "\u0422\u0435\u043a\u0441\u0442 \u0437\u0430\u043c\u0435\u043d\u044b \u0434\u043b\u044f \u0443\u0437\u043b\u0430 \u0437\u0430\u043f\u0438\u0441\u0438 \"{0}\" \u0441\u043e\u0434\u0435\u0440\u0436\u0438\u0442 \u0443\u0437\u0435\u043b \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u043e\u0432 \"{1}\" \u0441 \u043d\u0435\u0441\u0432\u044f\u0437\u0430\u043d\u043d\u044b\u043c \u043f\u0440\u0435\u0444\u0438\u043a\u0441\u043e\u043c \"{2}\". "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unbound-prefix-in-entity-reference"

    aput-object v3, v2, v4

    const-string v3, "\u0422\u0435\u043a\u0441\u0442 \u0437\u0430\u043c\u0435\u043d\u044b \u0434\u043b\u044f \u0443\u0437\u043b\u0430 \u0437\u0430\u043f\u0438\u0441\u0438 \"{0}\" \u0441\u043e\u0434\u0435\u0440\u0436\u0438\u0442 \u0443\u0437\u0435\u043b \u0430\u0442\u0440\u0438\u0431\u0443\u0442\u043e\u0432 \"{1}\" \u0441 \u043d\u0435\u0441\u0432\u044f\u0437\u0430\u043d\u043d\u044b\u043c \u043f\u0440\u0435\u0444\u0438\u043a\u0441\u043e\u043c \"{2}\". "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    return-object v0
.end method
