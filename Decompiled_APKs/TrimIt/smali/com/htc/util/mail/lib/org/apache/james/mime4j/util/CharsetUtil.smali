.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;
.super Ljava/lang/Object;
.source "CharsetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;,
        Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;
    }
.end annotation


# static fields
.field public static final CR:I = 0xd

.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final HT:I = 0x9

.field public static final ISO_8859_1:Ljava/nio/charset/Charset; = null

.field private static JAVA_CHARSETS:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset; = null

.field public static final LF:I = 0xa

.field public static final SP:I = 0x20

.field public static final US_ASCII:Ljava/nio/charset/Charset;

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static charsetMap:Ljava/util/HashMap;

.field private static decodingSupported:Ljava/util/TreeSet;

.field private static encodingSupported:Ljava/util/TreeSet;

.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    .line 792
    const-class v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;

    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v5

    sput-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    .line 811
    const/16 v5, 0x93

    new-array v5, v5, [Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const/4 v6, 0x0

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "ISO8859_1"

    const-string v9, "ISO-8859-1"

    const/16 v10, 0xd

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ISO_8859-1:1987"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "iso-ir-100"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ISO_8859-1"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "latin1"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "l1"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "IBM819"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "CP819"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string v12, "csISOLatin1"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "8859_1"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const-string v12, "819"

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string v12, "IBM-819"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    const-string v12, "ISO8859-1"

    aput-object v12, v10, v11

    const/16 v11, 0xc

    const-string v12, "ISO_8859_1"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "ISO8859_2"

    const-string v9, "ISO-8859-2"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ISO_8859-2:1987"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "iso-ir-101"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ISO_8859-2"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "latin2"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "l2"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "csISOLatin2"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "8859_2"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string v12, "iso8859_2"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "ISO8859_3"

    const-string v9, "ISO-8859-3"

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ISO_8859-3:1988"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "iso-ir-109"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ISO_8859-3"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "latin3"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "l3"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "csISOLatin3"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "8859_3"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "ISO8859_4"

    const-string v9, "ISO-8859-4"

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ISO_8859-4:1988"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "iso-ir-110"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ISO_8859-4"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "latin4"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "l4"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "csISOLatin4"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "8859_4"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "ISO8859_5"

    const-string v9, "ISO-8859-5"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ISO_8859-5:1988"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "iso-ir-144"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ISO_8859-5"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "cyrillic"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "csISOLatinCyrillic"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "8859_5"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/4 v6, 0x5

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "ISO8859_6"

    const-string v9, "ISO-8859-6"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ISO_8859-6:1987"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "iso-ir-127"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ISO_8859-6"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "ECMA-114"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "ASMO-708"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "arabic"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "csISOLatinArabic"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string v12, "8859_6"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/4 v6, 0x6

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "ISO8859_7"

    const-string v9, "ISO-8859-7"

    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ISO_8859-7:1987"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "iso-ir-126"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ISO_8859-7"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "ELOT_928"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "ECMA-118"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "greek"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "greek8"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string v12, "csISOLatinGreek"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "8859_7"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const-string v12, "sun_eu_greek"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/4 v6, 0x7

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "ISO8859_8"

    const-string v9, "ISO-8859-8"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ISO_8859-8:1988"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "iso-ir-138"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ISO_8859-8"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "hebrew"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "csISOLatinHebrew"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "8859_8"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x8

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "ISO8859_9"

    const-string v9, "ISO-8859-9"

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ISO_8859-9:1989"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "iso-ir-148"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ISO_8859-9"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "latin5"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "l5"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "csISOLatin5"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "8859_9"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x9

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "ISO8859_13"

    const-string v9, "ISO-8859-13"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0xa

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "ISO8859_15"

    const-string v9, "ISO-8859-15"

    const/16 v10, 0xe

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ISO_8859-15"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "Latin-9"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "8859_15"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "csISOlatin9"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "IBM923"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "cp923"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "923"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string v12, "L9"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "IBM-923"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const-string v12, "ISO8859-15"

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string v12, "LATIN9"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    const-string v12, "LATIN0"

    aput-object v12, v10, v11

    const/16 v11, 0xc

    const-string v12, "csISOlatin0"

    aput-object v12, v10, v11

    const/16 v11, 0xd

    const-string v12, "ISO8859_15_FDIS"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0xb

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "KOI8_R"

    const-string v9, "KOI8-R"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "csKOI8R"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "koi8"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0xc

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "ASCII"

    const-string v9, "US-ASCII"

    const/16 v10, 0xc

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ANSI_X3.4-1968"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "iso-ir-6"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ANSI_X3.4-1986"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "ISO_646.irv:1991"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "ISO646-US"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "us"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "IBM367"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string v12, "cp367"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "csASCII"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const-string v12, "ascii7"

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string v12, "646"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    const-string v12, "iso_646.irv:1983"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0xd

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "UTF8"

    const-string v9, "UTF-8"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0xe

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "UTF-16"

    const-string v9, "UTF-16"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "UTF_16"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0xf

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "UnicodeBigUnmarked"

    const-string v9, "UTF-16BE"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "X-UTF-16BE"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "UTF_16BE"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ISO-10646-UCS-2"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x10

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "UnicodeLittleUnmarked"

    const-string v9, "UTF-16LE"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "UTF_16LE"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "X-UTF-16LE"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x11

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Big5"

    const-string v9, "Big5"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "csBig5"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "CN-Big5"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "BIG-FIVE"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "BIGFIVE"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x12

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Big5_HKSCS"

    const-string v9, "Big5-HKSCS"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "big5hkscs"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x13

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "EUC_JP"

    const-string v9, "EUC-JP"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "csEUCPkdFmtJapanese"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "Extended_UNIX_Code_Packed_Format_for_Japanese"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "eucjis"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "x-eucjp"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "eucjp"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "x-euc-jp"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x14

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "EUC_KR"

    const-string v9, "EUC-KR"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "csEUCKR"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "ksc5601"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "5601"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "ksc5601_1987"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "ksc_5601"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "ksc5601-1987"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "ks_c_5601-1987"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string v12, "euckr"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x15

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "GB18030"

    const-string v9, "GB18030"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "gb18030-2000"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x16

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "EUC_CN"

    const-string v9, "GB2312"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "x-EUC-CN"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csGB2312"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "euccn"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "euc-cn"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "gb2312-80"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "gb2312-1980"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "CN-GB"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string v12, "CN-GB-ISOIR165"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x17

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "GBK"

    const-string v9, "windows-936"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "CP936"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "MS936"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ms_936"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "x-mswin-936"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x18

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp037"

    const-string v9, "IBM037"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ebcdic-cp-us"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "ebcdic-cp-ca"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ebcdic-cp-wt"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "ebcdic-cp-nl"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "csIBM037"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x19

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp273"

    const-string v9, "IBM273"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "csIBM273"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x1a

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp277"

    const-string v9, "IBM277"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "EBCDIC-CP-DK"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "EBCDIC-CP-NO"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "csIBM277"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x1b

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp278"

    const-string v9, "IBM278"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "CP278"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "ebcdic-cp-fi"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ebcdic-cp-se"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "csIBM278"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x1c

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp280"

    const-string v9, "IBM280"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ebcdic-cp-it"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csIBM280"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x1d

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp284"

    const-string v9, "IBM284"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ebcdic-cp-es"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csIBM284"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x1e

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp285"

    const-string v9, "IBM285"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ebcdic-cp-gb"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csIBM285"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x1f

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp297"

    const-string v9, "IBM297"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ebcdic-cp-fr"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csIBM297"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x20

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp420"

    const-string v9, "IBM420"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ebcdic-cp-ar1"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csIBM420"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x21

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp424"

    const-string v9, "IBM424"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ebcdic-cp-he"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csIBM424"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x22

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp437"

    const-string v9, "IBM437"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "437"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csPC8CodePage437"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x23

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp500"

    const-string v9, "IBM500"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ebcdic-cp-be"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "ebcdic-cp-ch"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "csIBM500"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x24

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp775"

    const-string v9, "IBM775"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "csPC775Baltic"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x25

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp838"

    const-string v9, "IBM-Thai"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x26

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp850"

    const-string v9, "IBM850"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "850"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csPC850Multilingual"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x27

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp852"

    const-string v9, "IBM852"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "852"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csPCp852"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x28

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp855"

    const-string v9, "IBM855"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "855"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csIBM855"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x29

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp857"

    const-string v9, "IBM857"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "857"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csIBM857"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x2a

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp858"

    const-string v9, "IBM00858"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "CCSID00858"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "CP00858"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "PC-Multilingual-850+euro"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x2b

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp860"

    const-string v9, "IBM860"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "860"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csIBM860"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x2c

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp861"

    const-string v9, "IBM861"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "861"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "cp-is"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "csIBM861"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x2d

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp862"

    const-string v9, "IBM862"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "862"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csPC862LatinHebrew"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x2e

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp863"

    const-string v9, "IBM863"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "863"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csIBM863"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x2f

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp864"

    const-string v9, "IBM864"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "cp864"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csIBM864"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x30

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp865"

    const-string v9, "IBM865"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "865"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csIBM865"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x31

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp866"

    const-string v9, "IBM866"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "866"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csIBM866"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x32

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp868"

    const-string v9, "IBM868"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "cp-ar"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csIBM868"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x33

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp869"

    const-string v9, "IBM869"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "cp-gr"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csIBM869"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x34

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp870"

    const-string v9, "IBM870"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ebcdic-cp-roece"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "ebcdic-cp-yu"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "csIBM870"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x35

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp871"

    const-string v9, "IBM871"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ebcdic-cp-is"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csIBM871"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x36

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp918"

    const-string v9, "IBM918"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ebcdic-cp-ar2"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csIBM918"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x37

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1026"

    const-string v9, "IBM1026"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "csIBM1026"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x38

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1047"

    const-string v9, "IBM1047"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "IBM-1047"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x39

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1140"

    const-string v9, "IBM01140"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "CCSID01140"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "CP01140"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ebcdic-us-37+euro"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x3a

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1141"

    const-string v9, "IBM01141"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "CCSID01141"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "CP01141"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ebcdic-de-273+euro"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x3b

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1142"

    const-string v9, "IBM01142"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "CCSID01142"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "CP01142"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ebcdic-dk-277+euro"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "ebcdic-no-277+euro"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x3c

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1143"

    const-string v9, "IBM01143"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "CCSID01143"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "CP01143"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ebcdic-fi-278+euro"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "ebcdic-se-278+euro"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x3d

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1144"

    const-string v9, "IBM01144"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "CCSID01144"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "CP01144"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ebcdic-it-280+euro"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x3e

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1145"

    const-string v9, "IBM01145"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "CCSID01145"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "CP01145"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ebcdic-es-284+euro"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x3f

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1146"

    const-string v9, "IBM01146"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "CCSID01146"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "CP01146"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ebcdic-gb-285+euro"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x40

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1147"

    const-string v9, "IBM01147"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "CCSID01147"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "CP01147"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ebcdic-fr-297+euro"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x41

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1148"

    const-string v9, "IBM01148"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "CCSID01148"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "CP01148"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ebcdic-international-500+euro"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x42

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1149"

    const-string v9, "IBM01149"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "CCSID01149"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "CP01149"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ebcdic-is-871+euro"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x43

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1250"

    const-string v9, "windows-1250"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x44

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1251"

    const-string v9, "windows-1251"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x45

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1252"

    const-string v9, "windows-1252"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x46

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1253"

    const-string v9, "windows-1253"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x47

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1254"

    const-string v9, "windows-1254"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x48

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1255"

    const-string v9, "windows-1255"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x49

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1256"

    const-string v9, "windows-1256"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x4a

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1257"

    const-string v9, "windows-1257"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x4b

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1258"

    const-string v9, "windows-1258"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x4c

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "ISO2022CN"

    const-string v9, "ISO-2022-CN"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x4d

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "ISO2022JP"

    const-string v9, "ISO-2022-JP"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "csISO2022JP"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "JIS"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "jis_encoding"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "csjisencoding"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x4e

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "ISO2022KR"

    const-string v9, "ISO-2022-KR"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "csISO2022KR"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x4f

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "JIS_X0201"

    const-string v9, "JIS_X0201"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "X0201"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "JIS0201"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "csHalfWidthKatakana"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x50

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "JIS_X0212-1990"

    const-string v9, "JIS_X0212-1990"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "iso-ir-159"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "x0212"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "JIS0212"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "csISO159JISX02121990"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x51

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "JIS_C6626-1983"

    const-string v9, "JIS_C6626-1983"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "x-JIS0208"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "JIS0208"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "csISO87JISX0208"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "x0208"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "JIS_X0208-1983"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "iso-ir-87"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x52

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "SJIS"

    const-string v9, "Shift_JIS"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "MS_Kanji"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csShiftJIS"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "shift-jis"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "x-sjis"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "pck"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x53

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "TIS620"

    const-string v9, "TIS-620"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x54

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "MS932"

    const-string v9, "Windows-31J"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "windows-932"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "csWindows31J"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "x-ms-cp932"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x55

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "EUC_TW"

    const-string v9, "EUC-TW"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "x-EUC-TW"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "cns11643"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "euctw"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x56

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "x-Johab"

    const-string v9, "johab"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "johab"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "cp1361"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "ms1361"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "ksc5601-1992"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "ksc5601_1992"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x57

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "MS950_HKSCS"

    const-string v9, ""

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x58

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "MS874"

    const-string v9, "windows-874"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "cp874"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x59

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "MS949"

    const-string v9, "windows-949"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "windows949"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "ms_949"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "x-windows-949"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x5a

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "MS950"

    const-string v9, "windows-950"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "x-windows-950"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x5b

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp737"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x5c

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp856"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x5d

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp875"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x5e

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp921"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x5f

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp922"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x60

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp930"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x61

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp933"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x62

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp935"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x63

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp937"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x64

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp939"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x65

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp942"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x66

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp942C"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x67

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp943"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x68

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp943C"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x69

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp948"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x6a

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp949"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x6b

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp949C"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x6c

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp950"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x6d

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp964"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x6e

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp970"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x6f

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1006"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x70

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1025"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x71

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1046"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x72

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1097"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x73

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1098"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x74

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1112"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x75

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1122"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x76

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1123"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x77

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1124"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x78

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1381"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x79

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp1383"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x7a

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Cp33722"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x7b

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "Big5_Solaris"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x7c

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "EUC_JP_LINUX"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x7d

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "EUC_JP_Solaris"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x7e

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "ISCII91"

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "x-ISCII91"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "iscii"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x7f

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "ISO2022_CN_CNS"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x80

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "ISO2022_CN_GB"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x81

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "x-iso-8859-11"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x82

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "JISAutoDetect"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x83

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "MacArabic"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x84

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "MacCentralEurope"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x85

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "MacCroatian"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x86

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "MacCyrillic"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x87

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "MacDingbat"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x88

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "MacGreek"

    const-string v9, "MacGreek"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x89

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "MacHebrew"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x8a

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "MacIceland"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x8b

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "MacRoman"

    const-string v9, "MacRoman"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Macintosh"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "MAC"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "csMacintosh"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x8c

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "MacRomania"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x8d

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "MacSymbol"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x8e

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "MacThai"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x8f

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "MacTurkish"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x90

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "MacUkraine"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x91

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "UnicodeBig"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    const/16 v6, 0x92

    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v8, "UnicodeLittle"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v7, v5, v6

    sput-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    .line 1004
    const/4 v5, 0x0

    sput-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/TreeSet;

    .line 1010
    const/4 v5, 0x0

    sput-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/TreeSet;

    .line 1016
    const/4 v5, 0x0

    sput-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    .line 1019
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    sput-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/TreeSet;

    .line 1020
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    sput-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/TreeSet;

    .line 1021
    const/4 v5, 0x5

    new-array v1, v5, [B

    fill-array-data v1, :array_0

    .line 1022
    .local v1, dummy:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 1024
    :try_start_0
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    aget-object v5, v5, v2

    #getter for: Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1025
    .local v4, s:Ljava/lang/String;
    sget-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/TreeSet;

    sget-object v6, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    aget-object v6, v6, v2

    #getter for: Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1030
    .end local v4           #s:Ljava/lang/String;
    :goto_1
    :try_start_1
    const-string v5, "dummy"

    sget-object v6, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    aget-object v6, v6, v2

    #getter for: Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 1031
    sget-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/TreeSet;

    sget-object v6, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    aget-object v6, v6, v2

    #getter for: Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1022
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1037
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    .line 1038
    const/4 v2, 0x0

    :goto_3
    sget-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 1039
    sget-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    aget-object v0, v5, v2

    .line 1040
    .local v0, c:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;
    sget-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    #getter for: Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    #getter for: Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->access$200(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1042
    sget-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    #getter for: Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->access$200(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    :cond_1
    #getter for: Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->aliases:[Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->access$300(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1045
    const/4 v3, 0x0

    .local v3, j:I
    :goto_4
    #getter for: Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->aliases:[Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->access$300(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 1046
    sget-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    #getter for: Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->aliases:[Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->access$300(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1038
    .end local v3           #j:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1051
    .end local v0           #c:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;
    :cond_3
    sget-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1052
    sget-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Character sets which support decoding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/TreeSet;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1054
    sget-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Character sets which support encoding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/TreeSet;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1078
    :cond_4
    const-string v5, "US-ASCII"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    sput-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    .line 1081
    const-string v5, "ISO-8859-1"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    sput-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 1084
    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    sput-object v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    return-void

    .line 1033
    :catch_0
    move-exception v5

    goto/16 :goto_2

    .line 1032
    :catch_1
    move-exception v5

    goto/16 :goto_2

    .line 1027
    :catch_2
    move-exception v5

    goto/16 :goto_1

    .line 1026
    :catch_3
    move-exception v5

    goto/16 :goto_1

    .line 1021
    nop

    :array_0
    .array-data 0x1
        0x64t
        0x75t
        0x6dt
        0x6dt
        0x79t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    return-void
.end method

.method public static getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 6
    .parameter "charsetName"

    .prologue
    .line 1191
    const-string v0, "ISO-8859-1"

    .line 1194
    .local v0, defaultCharset:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object p0, v0

    .line 1197
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1205
    :goto_0
    return-object v3

    .line 1198
    :catch_0
    move-exception v1

    .line 1199
    .local v1, e:Ljava/nio/charset/IllegalCharsetNameException;
    sget-object v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal charset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fallback to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 1201
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    goto :goto_0

    .line 1202
    .end local v1           #e:Ljava/nio/charset/IllegalCharsetNameException;
    :catch_1
    move-exception v2

    .line 1203
    .local v2, ex:Ljava/nio/charset/UnsupportedCharsetException;
    sget-object v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported charset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fallback to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 1205
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    goto :goto_0
.end method

.method public static isDecodingSupported(Ljava/lang/String;)Z
    .locals 2
    .parameter "charsetName"

    .prologue
    .line 1153
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEncodingSupported(Ljava/lang/String;)Z
    .locals 2
    .parameter "charsetName"

    .prologue
    .line 1138
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWhitespace(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 1099
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWhitespace(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    .line 1114
    if-nez p0, :cond_0

    .line 1115
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "String may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1117
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1118
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1119
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1120
    const/4 v2, 0x0

    .line 1123
    :goto_1
    return v2

    .line 1118
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1123
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static toJavaCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "charsetName"

    .prologue
    .line 1183
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    .line 1184
    .local v0, c:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;
    if-eqz v0, :cond_0

    .line 1185
    #getter for: Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v1

    .line 1187
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static toMimeCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "charsetName"

    .prologue
    .line 1164
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;

    .line 1165
    .local v0, c:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;
    if-eqz v0, :cond_0

    .line 1166
    #getter for: Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;->access$200(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v1

    .line 1168
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
