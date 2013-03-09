.class interface abstract Lcom/htc/gson/JsonParserJavaccConstants;
.super Ljava/lang/Object;
.source "JsonParserJavaccConstants.java"


# static fields
.field public static final BOOLEAN:I = 0xa

.field public static final CHAR:I = 0x15

.field public static final CNTRL_ESC:I = 0x16

.field public static final DEFAULT:I = 0x0

.field public static final DIGITS:I = 0x6

.field public static final DOUBLE_QUOTE_LITERAL:I = 0x11

.field public static final ENDQUOTE:I = 0x14

.field public static final EOF:I = 0x0

.field public static final ESCAPE_CHAR:I = 0xf

.field public static final ESC_STATE:I = 0x2

.field public static final EXPONENT:I = 0x5

.field public static final HEX:I = 0x18

.field public static final HEX_CHAR:I = 0xd

.field public static final HEX_ESC:I = 0x19

.field public static final HEX_STATE:I = 0x3

.field public static final IDENTIFIER_SANS_EXPONENT:I = 0xb

.field public static final IDENTIFIER_STARTS_WITH_EXPONENT:I = 0xc

.field public static final INFINITY:I = 0x9

.field public static final NAN:I = 0x8

.field public static final NULL:I = 0x7

.field public static final QUOTE:I = 0x12

.field public static final SINGLE_QUOTE_LITERAL:I = 0x10

.field public static final STRING_STATE:I = 0x1

.field public static final UNICODE_CHAR:I = 0xe

.field public static final tokenImage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<EOF>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\" \""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\"\\t\""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\"\\n\""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\"\\r\""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "<EXPONENT>"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<DIGITS>"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\"null\""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\"NaN\""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\"Infinity\""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "<BOOLEAN>"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "<IDENTIFIER_SANS_EXPONENT>"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "<IDENTIFIER_STARTS_WITH_EXPONENT>"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "<HEX_CHAR>"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "<UNICODE_CHAR>"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "<ESCAPE_CHAR>"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "<SINGLE_QUOTE_LITERAL>"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "<DOUBLE_QUOTE_LITERAL>"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\"\\\"\""

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\"\\\\\""

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "<ENDQUOTE>"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "<CHAR>"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "<CNTRL_ESC>"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\"u\""

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "<HEX>"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "<HEX_ESC>"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\")]}\\\'\\n\""

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\"{\""

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\"}\""

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\",\""

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\":\""

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\"[\""

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\"]\""

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\"-\""

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\".\""

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/gson/JsonParserJavaccConstants;->tokenImage:[Ljava/lang/String;

    return-void
.end method
