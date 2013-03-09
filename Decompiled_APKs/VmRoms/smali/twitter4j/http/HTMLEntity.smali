.class public Ltwitter4j/http/HTMLEntity;
.super Ljava/lang/Object;
.source "HTMLEntity.java"


# static fields
.field private static entityEscapeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static escapeEntityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 83
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Ltwitter4j/http/HTMLEntity;->entityEscapeMap:Ljava/util/Map;

    .line 84
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Ltwitter4j/http/HTMLEntity;->escapeEntityMap:Ljava/util/Map;

    .line 87
    const/16 v5, 0xfb

    new-array v1, v5, [[Ljava/lang/String;

    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "&nbsp;"

    aput-object v6, v5, v9

    const-string v6, "&#160;"

    aput-object v6, v5, v10

    const-string v6, "\u00a0"

    aput-object v6, v5, v8

    aput-object v5, v1, v9

    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "&iexcl;"

    aput-object v6, v5, v9

    const-string v6, "&#161;"

    aput-object v6, v5, v10

    const-string v6, "\u00a1"

    aput-object v6, v5, v8

    aput-object v5, v1, v10

    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "&cent;"

    aput-object v6, v5, v9

    const-string v6, "&#162;"

    aput-object v6, v5, v10

    const-string v6, "\u00a2"

    aput-object v6, v5, v8

    aput-object v5, v1, v8

    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "&pound;"

    aput-object v6, v5, v9

    const-string v6, "&#163;"

    aput-object v6, v5, v10

    const-string v6, "\u00a3"

    aput-object v6, v5, v8

    aput-object v5, v1, v11

    const/4 v5, 0x4

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&curren;"

    aput-object v7, v6, v9

    const-string v7, "&#164;"

    aput-object v7, v6, v10

    const-string v7, "\u00a4"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/4 v5, 0x5

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&yen;"

    aput-object v7, v6, v9

    const-string v7, "&#165;"

    aput-object v7, v6, v10

    const-string v7, "\u00a5"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/4 v5, 0x6

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&brvbar;"

    aput-object v7, v6, v9

    const-string v7, "&#166;"

    aput-object v7, v6, v10

    const-string v7, "\u00a6"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/4 v5, 0x7

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&sect;"

    aput-object v7, v6, v9

    const-string v7, "&#167;"

    aput-object v7, v6, v10

    const-string v7, "\u00a7"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x8

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&uml;"

    aput-object v7, v6, v9

    const-string v7, "&#168;"

    aput-object v7, v6, v10

    const-string v7, "\u00a8"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x9

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&copy;"

    aput-object v7, v6, v9

    const-string v7, "&#169;"

    aput-object v7, v6, v10

    const-string v7, "\u00a9"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xa

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&ordf;"

    aput-object v7, v6, v9

    const-string v7, "&#170;"

    aput-object v7, v6, v10

    const-string v7, "\u00aa"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xb

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&laquo;"

    aput-object v7, v6, v9

    const-string v7, "&#171;"

    aput-object v7, v6, v10

    const-string v7, "\u00ab"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xc

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&not;"

    aput-object v7, v6, v9

    const-string v7, "&#172;"

    aput-object v7, v6, v10

    const-string v7, "\u00ac"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xd

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&shy;"

    aput-object v7, v6, v9

    const-string v7, "&#173;"

    aput-object v7, v6, v10

    const-string v7, "\u00ad"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xe

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&reg;"

    aput-object v7, v6, v9

    const-string v7, "&#174;"

    aput-object v7, v6, v10

    const-string v7, "\u00ae"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xf

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&macr;"

    aput-object v7, v6, v9

    const-string v7, "&#175;"

    aput-object v7, v6, v10

    const-string v7, "\u00af"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x10

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&deg;"

    aput-object v7, v6, v9

    const-string v7, "&#176;"

    aput-object v7, v6, v10

    const-string v7, "\u00b0"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x11

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&plusmn;"

    aput-object v7, v6, v9

    const-string v7, "&#177;"

    aput-object v7, v6, v10

    const-string v7, "\u00b1"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x12

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&sup2;"

    aput-object v7, v6, v9

    const-string v7, "&#178;"

    aput-object v7, v6, v10

    const-string v7, "\u00b2"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x13

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&sup3;"

    aput-object v7, v6, v9

    const-string v7, "&#179;"

    aput-object v7, v6, v10

    const-string v7, "\u00b3"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x14

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&acute;"

    aput-object v7, v6, v9

    const-string v7, "&#180;"

    aput-object v7, v6, v10

    const-string v7, "\u00b4"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x15

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&micro;"

    aput-object v7, v6, v9

    const-string v7, "&#181;"

    aput-object v7, v6, v10

    const-string v7, "\u00b5"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x16

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&para;"

    aput-object v7, v6, v9

    const-string v7, "&#182;"

    aput-object v7, v6, v10

    const-string v7, "\u00b6"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x17

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&middot;"

    aput-object v7, v6, v9

    const-string v7, "&#183;"

    aput-object v7, v6, v10

    const-string v7, "\u00b7"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x18

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&cedil;"

    aput-object v7, v6, v9

    const-string v7, "&#184;"

    aput-object v7, v6, v10

    const-string v7, "\u00b8"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x19

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&sup1;"

    aput-object v7, v6, v9

    const-string v7, "&#185;"

    aput-object v7, v6, v10

    const-string v7, "\u00b9"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x1a

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&ordm;"

    aput-object v7, v6, v9

    const-string v7, "&#186;"

    aput-object v7, v6, v10

    const-string v7, "\u00ba"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x1b

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&raquo;"

    aput-object v7, v6, v9

    const-string v7, "&#187;"

    aput-object v7, v6, v10

    const-string v7, "\u00bb"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x1c

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&frac14;"

    aput-object v7, v6, v9

    const-string v7, "&#188;"

    aput-object v7, v6, v10

    const-string v7, "\u00bc"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x1d

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&frac12;"

    aput-object v7, v6, v9

    const-string v7, "&#189;"

    aput-object v7, v6, v10

    const-string v7, "\u00bd"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x1e

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&frac34;"

    aput-object v7, v6, v9

    const-string v7, "&#190;"

    aput-object v7, v6, v10

    const-string v7, "\u00be"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x1f

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&iquest;"

    aput-object v7, v6, v9

    const-string v7, "&#191;"

    aput-object v7, v6, v10

    const-string v7, "\u00bf"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x20

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Agrave;"

    aput-object v7, v6, v9

    const-string v7, "&#192;"

    aput-object v7, v6, v10

    const-string v7, "\u00c0"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x21

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Aacute;"

    aput-object v7, v6, v9

    const-string v7, "&#193;"

    aput-object v7, v6, v10

    const-string v7, "\u00c1"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x22

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Acirc;"

    aput-object v7, v6, v9

    const-string v7, "&#194;"

    aput-object v7, v6, v10

    const-string v7, "\u00c2"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x23

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Atilde;"

    aput-object v7, v6, v9

    const-string v7, "&#195;"

    aput-object v7, v6, v10

    const-string v7, "\u00c3"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x24

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Auml;"

    aput-object v7, v6, v9

    const-string v7, "&#196;"

    aput-object v7, v6, v10

    const-string v7, "\u00c4"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x25

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Aring;"

    aput-object v7, v6, v9

    const-string v7, "&#197;"

    aput-object v7, v6, v10

    const-string v7, "\u00c5"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x26

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&AElig;"

    aput-object v7, v6, v9

    const-string v7, "&#198;"

    aput-object v7, v6, v10

    const-string v7, "\u00c6"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x27

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Ccedil;"

    aput-object v7, v6, v9

    const-string v7, "&#199;"

    aput-object v7, v6, v10

    const-string v7, "\u00c7"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x28

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Egrave;"

    aput-object v7, v6, v9

    const-string v7, "&#200;"

    aput-object v7, v6, v10

    const-string v7, "\u00c8"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x29

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Eacute;"

    aput-object v7, v6, v9

    const-string v7, "&#201;"

    aput-object v7, v6, v10

    const-string v7, "\u00c9"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x2a

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Ecirc;"

    aput-object v7, v6, v9

    const-string v7, "&#202;"

    aput-object v7, v6, v10

    const-string v7, "\u00ca"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x2b

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Euml;"

    aput-object v7, v6, v9

    const-string v7, "&#203;"

    aput-object v7, v6, v10

    const-string v7, "\u00cb"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x2c

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Igrave;"

    aput-object v7, v6, v9

    const-string v7, "&#204;"

    aput-object v7, v6, v10

    const-string v7, "\u00cc"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x2d

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Iacute;"

    aput-object v7, v6, v9

    const-string v7, "&#205;"

    aput-object v7, v6, v10

    const-string v7, "\u00cd"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x2e

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Icirc;"

    aput-object v7, v6, v9

    const-string v7, "&#206;"

    aput-object v7, v6, v10

    const-string v7, "\u00ce"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x2f

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Iuml;"

    aput-object v7, v6, v9

    const-string v7, "&#207;"

    aput-object v7, v6, v10

    const-string v7, "\u00cf"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x30

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&ETH;"

    aput-object v7, v6, v9

    const-string v7, "&#208;"

    aput-object v7, v6, v10

    const-string v7, "\u00d0"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x31

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Ntilde;"

    aput-object v7, v6, v9

    const-string v7, "&#209;"

    aput-object v7, v6, v10

    const-string v7, "\u00d1"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x32

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Ograve;"

    aput-object v7, v6, v9

    const-string v7, "&#210;"

    aput-object v7, v6, v10

    const-string v7, "\u00d2"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x33

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Oacute;"

    aput-object v7, v6, v9

    const-string v7, "&#211;"

    aput-object v7, v6, v10

    const-string v7, "\u00d3"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x34

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Ocirc;"

    aput-object v7, v6, v9

    const-string v7, "&#212;"

    aput-object v7, v6, v10

    const-string v7, "\u00d4"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x35

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Otilde;"

    aput-object v7, v6, v9

    const-string v7, "&#213;"

    aput-object v7, v6, v10

    const-string v7, "\u00d5"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x36

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Ouml;"

    aput-object v7, v6, v9

    const-string v7, "&#214;"

    aput-object v7, v6, v10

    const-string v7, "\u00d6"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x37

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&times;"

    aput-object v7, v6, v9

    const-string v7, "&#215;"

    aput-object v7, v6, v10

    const-string v7, "\u00d7"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x38

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Oslash;"

    aput-object v7, v6, v9

    const-string v7, "&#216;"

    aput-object v7, v6, v10

    const-string v7, "\u00d8"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x39

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Ugrave;"

    aput-object v7, v6, v9

    const-string v7, "&#217;"

    aput-object v7, v6, v10

    const-string v7, "\u00d9"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x3a

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Uacute;"

    aput-object v7, v6, v9

    const-string v7, "&#218;"

    aput-object v7, v6, v10

    const-string v7, "\u00da"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x3b

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Ucirc;"

    aput-object v7, v6, v9

    const-string v7, "&#219;"

    aput-object v7, v6, v10

    const-string v7, "\u00db"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x3c

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Uuml;"

    aput-object v7, v6, v9

    const-string v7, "&#220;"

    aput-object v7, v6, v10

    const-string v7, "\u00dc"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x3d

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Yacute;"

    aput-object v7, v6, v9

    const-string v7, "&#221;"

    aput-object v7, v6, v10

    const-string v7, "\u00dd"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x3e

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&THORN;"

    aput-object v7, v6, v9

    const-string v7, "&#222;"

    aput-object v7, v6, v10

    const-string v7, "\u00de"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x3f

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&szlig;"

    aput-object v7, v6, v9

    const-string v7, "&#223;"

    aput-object v7, v6, v10

    const-string v7, "\u00df"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x40

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&agrave;"

    aput-object v7, v6, v9

    const-string v7, "&#224;"

    aput-object v7, v6, v10

    const-string v7, "\u00e0"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x41

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&aacute;"

    aput-object v7, v6, v9

    const-string v7, "&#225;"

    aput-object v7, v6, v10

    const-string v7, "\u00e1"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x42

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&acirc;"

    aput-object v7, v6, v9

    const-string v7, "&#226;"

    aput-object v7, v6, v10

    const-string v7, "\u00e2"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x43

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&atilde;"

    aput-object v7, v6, v9

    const-string v7, "&#227;"

    aput-object v7, v6, v10

    const-string v7, "\u00e3"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x44

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&auml;"

    aput-object v7, v6, v9

    const-string v7, "&#228;"

    aput-object v7, v6, v10

    const-string v7, "\u00e4"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x45

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&aring;"

    aput-object v7, v6, v9

    const-string v7, "&#229;"

    aput-object v7, v6, v10

    const-string v7, "\u00e5"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x46

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&aelig;"

    aput-object v7, v6, v9

    const-string v7, "&#230;"

    aput-object v7, v6, v10

    const-string v7, "\u00e6"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x47

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&ccedil;"

    aput-object v7, v6, v9

    const-string v7, "&#231;"

    aput-object v7, v6, v10

    const-string v7, "\u00e7"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x48

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&egrave;"

    aput-object v7, v6, v9

    const-string v7, "&#232;"

    aput-object v7, v6, v10

    const-string v7, "\u00e8"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x49

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&eacute;"

    aput-object v7, v6, v9

    const-string v7, "&#233;"

    aput-object v7, v6, v10

    const-string v7, "\u00e9"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x4a

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&ecirc;"

    aput-object v7, v6, v9

    const-string v7, "&#234;"

    aput-object v7, v6, v10

    const-string v7, "\u00ea"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x4b

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&euml;"

    aput-object v7, v6, v9

    const-string v7, "&#235;"

    aput-object v7, v6, v10

    const-string v7, "\u00eb"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x4c

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&igrave;"

    aput-object v7, v6, v9

    const-string v7, "&#236;"

    aput-object v7, v6, v10

    const-string v7, "\u00ec"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x4d

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&iacute;"

    aput-object v7, v6, v9

    const-string v7, "&#237;"

    aput-object v7, v6, v10

    const-string v7, "\u00ed"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x4e

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&icirc;"

    aput-object v7, v6, v9

    const-string v7, "&#238;"

    aput-object v7, v6, v10

    const-string v7, "\u00ee"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x4f

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&iuml;"

    aput-object v7, v6, v9

    const-string v7, "&#239;"

    aput-object v7, v6, v10

    const-string v7, "\u00ef"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x50

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&eth;"

    aput-object v7, v6, v9

    const-string v7, "&#240;"

    aput-object v7, v6, v10

    const-string v7, "\u00f0"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x51

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&ntilde;"

    aput-object v7, v6, v9

    const-string v7, "&#241;"

    aput-object v7, v6, v10

    const-string v7, "\u00f1"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x52

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&ograve;"

    aput-object v7, v6, v9

    const-string v7, "&#242;"

    aput-object v7, v6, v10

    const-string v7, "\u00f2"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x53

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&oacute;"

    aput-object v7, v6, v9

    const-string v7, "&#243;"

    aput-object v7, v6, v10

    const-string v7, "\u00f3"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x54

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&ocirc;"

    aput-object v7, v6, v9

    const-string v7, "&#244;"

    aput-object v7, v6, v10

    const-string v7, "\u00f4"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x55

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&otilde;"

    aput-object v7, v6, v9

    const-string v7, "&#245;"

    aput-object v7, v6, v10

    const-string v7, "\u00f5"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x56

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&ouml;"

    aput-object v7, v6, v9

    const-string v7, "&#246;"

    aput-object v7, v6, v10

    const-string v7, "\u00f6"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x57

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&divide;"

    aput-object v7, v6, v9

    const-string v7, "&#247;"

    aput-object v7, v6, v10

    const-string v7, "\u00f7"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x58

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&oslash;"

    aput-object v7, v6, v9

    const-string v7, "&#248;"

    aput-object v7, v6, v10

    const-string v7, "\u00f8"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x59

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&ugrave;"

    aput-object v7, v6, v9

    const-string v7, "&#249;"

    aput-object v7, v6, v10

    const-string v7, "\u00f9"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x5a

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&uacute;"

    aput-object v7, v6, v9

    const-string v7, "&#250;"

    aput-object v7, v6, v10

    const-string v7, "\u00fa"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x5b

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&ucirc;"

    aput-object v7, v6, v9

    const-string v7, "&#251;"

    aput-object v7, v6, v10

    const-string v7, "\u00fb"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x5c

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&uuml;"

    aput-object v7, v6, v9

    const-string v7, "&#252;"

    aput-object v7, v6, v10

    const-string v7, "\u00fc"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x5d

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&yacute;"

    aput-object v7, v6, v9

    const-string v7, "&#253;"

    aput-object v7, v6, v10

    const-string v7, "\u00fd"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x5e

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&thorn;"

    aput-object v7, v6, v9

    const-string v7, "&#254;"

    aput-object v7, v6, v10

    const-string v7, "\u00fe"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x5f

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&yuml;"

    aput-object v7, v6, v9

    const-string v7, "&#255;"

    aput-object v7, v6, v10

    const-string v7, "\u00ff"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x60

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&fnof;"

    aput-object v7, v6, v9

    const-string v7, "&#402;"

    aput-object v7, v6, v10

    const-string v7, "\u0192"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x61

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Alpha;"

    aput-object v7, v6, v9

    const-string v7, "&#913;"

    aput-object v7, v6, v10

    const-string v7, "\u0391"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x62

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Beta;"

    aput-object v7, v6, v9

    const-string v7, "&#914;"

    aput-object v7, v6, v10

    const-string v7, "\u0392"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x63

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Gamma;"

    aput-object v7, v6, v9

    const-string v7, "&#915;"

    aput-object v7, v6, v10

    const-string v7, "\u0393"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x64

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Delta;"

    aput-object v7, v6, v9

    const-string v7, "&#916;"

    aput-object v7, v6, v10

    const-string v7, "\u0394"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x65

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Epsilon;"

    aput-object v7, v6, v9

    const-string v7, "&#917;"

    aput-object v7, v6, v10

    const-string v7, "\u0395"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x66

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Zeta;"

    aput-object v7, v6, v9

    const-string v7, "&#918;"

    aput-object v7, v6, v10

    const-string v7, "\u0396"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x67

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Eta;"

    aput-object v7, v6, v9

    const-string v7, "&#919;"

    aput-object v7, v6, v10

    const-string v7, "\u0397"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x68

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Theta;"

    aput-object v7, v6, v9

    const-string v7, "&#920;"

    aput-object v7, v6, v10

    const-string v7, "\u0398"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x69

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Iota;"

    aput-object v7, v6, v9

    const-string v7, "&#921;"

    aput-object v7, v6, v10

    const-string v7, "\u0399"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x6a

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Kappa;"

    aput-object v7, v6, v9

    const-string v7, "&#922;"

    aput-object v7, v6, v10

    const-string v7, "\u039a"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x6b

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Lambda;"

    aput-object v7, v6, v9

    const-string v7, "&#923;"

    aput-object v7, v6, v10

    const-string v7, "\u039b"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x6c

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Mu;"

    aput-object v7, v6, v9

    const-string v7, "&#924;"

    aput-object v7, v6, v10

    const-string v7, "\u039c"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x6d

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Nu;"

    aput-object v7, v6, v9

    const-string v7, "&#925;"

    aput-object v7, v6, v10

    const-string v7, "\u039d"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x6e

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Xi;"

    aput-object v7, v6, v9

    const-string v7, "&#926;"

    aput-object v7, v6, v10

    const-string v7, "\u039e"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x6f

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Omicron;"

    aput-object v7, v6, v9

    const-string v7, "&#927;"

    aput-object v7, v6, v10

    const-string v7, "\u039f"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x70

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Pi;"

    aput-object v7, v6, v9

    const-string v7, "&#928;"

    aput-object v7, v6, v10

    const-string v7, "\u03a0"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x71

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Rho;"

    aput-object v7, v6, v9

    const-string v7, "&#929;"

    aput-object v7, v6, v10

    const-string v7, "\u03a1"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x72

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Sigma;"

    aput-object v7, v6, v9

    const-string v7, "&#931;"

    aput-object v7, v6, v10

    const-string v7, "\u03a3"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x73

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Tau;"

    aput-object v7, v6, v9

    const-string v7, "&#932;"

    aput-object v7, v6, v10

    const-string v7, "\u03a4"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x74

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Upsilon;"

    aput-object v7, v6, v9

    const-string v7, "&#933;"

    aput-object v7, v6, v10

    const-string v7, "\u03a5"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x75

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Phi;"

    aput-object v7, v6, v9

    const-string v7, "&#934;"

    aput-object v7, v6, v10

    const-string v7, "\u03a6"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x76

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Chi;"

    aput-object v7, v6, v9

    const-string v7, "&#935;"

    aput-object v7, v6, v10

    const-string v7, "\u03a7"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x77

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Psi;"

    aput-object v7, v6, v9

    const-string v7, "&#936;"

    aput-object v7, v6, v10

    const-string v7, "\u03a8"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x78

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Omega;"

    aput-object v7, v6, v9

    const-string v7, "&#937;"

    aput-object v7, v6, v10

    const-string v7, "\u03a9"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x79

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&alpha;"

    aput-object v7, v6, v9

    const-string v7, "&#945;"

    aput-object v7, v6, v10

    const-string v7, "\u03b1"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x7a

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&beta;"

    aput-object v7, v6, v9

    const-string v7, "&#946;"

    aput-object v7, v6, v10

    const-string v7, "\u03b2"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x7b

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&gamma;"

    aput-object v7, v6, v9

    const-string v7, "&#947;"

    aput-object v7, v6, v10

    const-string v7, "\u03b3"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x7c

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&delta;"

    aput-object v7, v6, v9

    const-string v7, "&#948;"

    aput-object v7, v6, v10

    const-string v7, "\u03b4"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x7d

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&epsilon;"

    aput-object v7, v6, v9

    const-string v7, "&#949;"

    aput-object v7, v6, v10

    const-string v7, "\u03b5"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x7e

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&zeta;"

    aput-object v7, v6, v9

    const-string v7, "&#950;"

    aput-object v7, v6, v10

    const-string v7, "\u03b6"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x7f

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&eta;"

    aput-object v7, v6, v9

    const-string v7, "&#951;"

    aput-object v7, v6, v10

    const-string v7, "\u03b7"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x80

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&theta;"

    aput-object v7, v6, v9

    const-string v7, "&#952;"

    aput-object v7, v6, v10

    const-string v7, "\u03b8"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x81

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&iota;"

    aput-object v7, v6, v9

    const-string v7, "&#953;"

    aput-object v7, v6, v10

    const-string v7, "\u03b9"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x82

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&kappa;"

    aput-object v7, v6, v9

    const-string v7, "&#954;"

    aput-object v7, v6, v10

    const-string v7, "\u03ba"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x83

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&lambda;"

    aput-object v7, v6, v9

    const-string v7, "&#955;"

    aput-object v7, v6, v10

    const-string v7, "\u03bb"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x84

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&mu;"

    aput-object v7, v6, v9

    const-string v7, "&#956;"

    aput-object v7, v6, v10

    const-string v7, "\u03bc"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x85

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&nu;"

    aput-object v7, v6, v9

    const-string v7, "&#957;"

    aput-object v7, v6, v10

    const-string v7, "\u03bd"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x86

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&xi;"

    aput-object v7, v6, v9

    const-string v7, "&#958;"

    aput-object v7, v6, v10

    const-string v7, "\u03be"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x87

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&omicron;"

    aput-object v7, v6, v9

    const-string v7, "&#959;"

    aput-object v7, v6, v10

    const-string v7, "\u03bf"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x88

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&pi;"

    aput-object v7, v6, v9

    const-string v7, "&#960;"

    aput-object v7, v6, v10

    const-string v7, "\u03c0"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x89

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&rho;"

    aput-object v7, v6, v9

    const-string v7, "&#961;"

    aput-object v7, v6, v10

    const-string v7, "\u03c1"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x8a

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&sigmaf;"

    aput-object v7, v6, v9

    const-string v7, "&#962;"

    aput-object v7, v6, v10

    const-string v7, "\u03c2"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x8b

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&sigma;"

    aput-object v7, v6, v9

    const-string v7, "&#963;"

    aput-object v7, v6, v10

    const-string v7, "\u03c3"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x8c

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&tau;"

    aput-object v7, v6, v9

    const-string v7, "&#964;"

    aput-object v7, v6, v10

    const-string v7, "\u03c4"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x8d

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&upsilon;"

    aput-object v7, v6, v9

    const-string v7, "&#965;"

    aput-object v7, v6, v10

    const-string v7, "\u03c5"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x8e

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&phi;"

    aput-object v7, v6, v9

    const-string v7, "&#966;"

    aput-object v7, v6, v10

    const-string v7, "\u03c6"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x8f

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&chi;"

    aput-object v7, v6, v9

    const-string v7, "&#967;"

    aput-object v7, v6, v10

    const-string v7, "\u03c7"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x90

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&psi;"

    aput-object v7, v6, v9

    const-string v7, "&#968;"

    aput-object v7, v6, v10

    const-string v7, "\u03c8"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x91

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&omega;"

    aput-object v7, v6, v9

    const-string v7, "&#969;"

    aput-object v7, v6, v10

    const-string v7, "\u03c9"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x92

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&thetasym;"

    aput-object v7, v6, v9

    const-string v7, "&#977;"

    aput-object v7, v6, v10

    const-string v7, "\u03d1"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x93

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&upsih;"

    aput-object v7, v6, v9

    const-string v7, "&#978;"

    aput-object v7, v6, v10

    const-string v7, "\u03d2"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x94

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&piv;"

    aput-object v7, v6, v9

    const-string v7, "&#982;"

    aput-object v7, v6, v10

    const-string v7, "\u03d6"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x95

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&bull;"

    aput-object v7, v6, v9

    const-string v7, "&#8226;"

    aput-object v7, v6, v10

    const-string v7, "\u2022"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x96

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&hellip;"

    aput-object v7, v6, v9

    const-string v7, "&#8230;"

    aput-object v7, v6, v10

    const-string v7, "\u2026"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x97

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&prime;"

    aput-object v7, v6, v9

    const-string v7, "&#8242;"

    aput-object v7, v6, v10

    const-string v7, "\u2032"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x98

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Prime;"

    aput-object v7, v6, v9

    const-string v7, "&#8243;"

    aput-object v7, v6, v10

    const-string v7, "\u2033"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x99

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&oline;"

    aput-object v7, v6, v9

    const-string v7, "&#8254;"

    aput-object v7, v6, v10

    const-string v7, "\u203e"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x9a

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&frasl;"

    aput-object v7, v6, v9

    const-string v7, "&#8260;"

    aput-object v7, v6, v10

    const-string v7, "\u2044"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x9b

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&weierp;"

    aput-object v7, v6, v9

    const-string v7, "&#8472;"

    aput-object v7, v6, v10

    const-string v7, "\u2118"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x9c

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&image;"

    aput-object v7, v6, v9

    const-string v7, "&#8465;"

    aput-object v7, v6, v10

    const-string v7, "\u2111"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x9d

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&real;"

    aput-object v7, v6, v9

    const-string v7, "&#8476;"

    aput-object v7, v6, v10

    const-string v7, "\u211c"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x9e

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&trade;"

    aput-object v7, v6, v9

    const-string v7, "&#8482;"

    aput-object v7, v6, v10

    const-string v7, "\u2122"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0x9f

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&alefsym;"

    aput-object v7, v6, v9

    const-string v7, "&#8501;"

    aput-object v7, v6, v10

    const-string v7, "\u2135"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xa0

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&larr;"

    aput-object v7, v6, v9

    const-string v7, "&#8592;"

    aput-object v7, v6, v10

    const-string v7, "\u2190"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xa1

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&uarr;"

    aput-object v7, v6, v9

    const-string v7, "&#8593;"

    aput-object v7, v6, v10

    const-string v7, "\u2191"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xa2

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&rarr;"

    aput-object v7, v6, v9

    const-string v7, "&#8594;"

    aput-object v7, v6, v10

    const-string v7, "\u2192"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xa3

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&darr;"

    aput-object v7, v6, v9

    const-string v7, "&#8595;"

    aput-object v7, v6, v10

    const-string v7, "\u2193"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xa4

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&harr;"

    aput-object v7, v6, v9

    const-string v7, "&#8596;"

    aput-object v7, v6, v10

    const-string v7, "\u2194"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xa5

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&crarr;"

    aput-object v7, v6, v9

    const-string v7, "&#8629;"

    aput-object v7, v6, v10

    const-string v7, "\u21b5"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xa6

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&lArr;"

    aput-object v7, v6, v9

    const-string v7, "&#8656;"

    aput-object v7, v6, v10

    const-string v7, "\u21d0"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xa7

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&uArr;"

    aput-object v7, v6, v9

    const-string v7, "&#8657;"

    aput-object v7, v6, v10

    const-string v7, "\u21d1"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xa8

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&rArr;"

    aput-object v7, v6, v9

    const-string v7, "&#8658;"

    aput-object v7, v6, v10

    const-string v7, "\u21d2"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xa9

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&dArr;"

    aput-object v7, v6, v9

    const-string v7, "&#8659;"

    aput-object v7, v6, v10

    const-string v7, "\u21d3"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xaa

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&hArr;"

    aput-object v7, v6, v9

    const-string v7, "&#8660;"

    aput-object v7, v6, v10

    const-string v7, "\u21d4"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xab

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&forall;"

    aput-object v7, v6, v9

    const-string v7, "&#8704;"

    aput-object v7, v6, v10

    const-string v7, "\u2200"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xac

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&part;"

    aput-object v7, v6, v9

    const-string v7, "&#8706;"

    aput-object v7, v6, v10

    const-string v7, "\u2202"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xad

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&exist;"

    aput-object v7, v6, v9

    const-string v7, "&#8707;"

    aput-object v7, v6, v10

    const-string v7, "\u2203"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xae

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&empty;"

    aput-object v7, v6, v9

    const-string v7, "&#8709;"

    aput-object v7, v6, v10

    const-string v7, "\u2205"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xaf

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&nabla;"

    aput-object v7, v6, v9

    const-string v7, "&#8711;"

    aput-object v7, v6, v10

    const-string v7, "\u2207"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xb0

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&isin;"

    aput-object v7, v6, v9

    const-string v7, "&#8712;"

    aput-object v7, v6, v10

    const-string v7, "\u2208"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xb1

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&notin;"

    aput-object v7, v6, v9

    const-string v7, "&#8713;"

    aput-object v7, v6, v10

    const-string v7, "\u2209"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xb2

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&ni;"

    aput-object v7, v6, v9

    const-string v7, "&#8715;"

    aput-object v7, v6, v10

    const-string v7, "\u220b"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xb3

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&prod;"

    aput-object v7, v6, v9

    const-string v7, "&#8719;"

    aput-object v7, v6, v10

    const-string v7, "\u220f"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xb4

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&sum;"

    aput-object v7, v6, v9

    const-string v7, "&#8721;"

    aput-object v7, v6, v10

    const-string v7, "\u2211"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xb5

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&minus;"

    aput-object v7, v6, v9

    const-string v7, "&#8722;"

    aput-object v7, v6, v10

    const-string v7, "\u2212"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xb6

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&lowast;"

    aput-object v7, v6, v9

    const-string v7, "&#8727;"

    aput-object v7, v6, v10

    const-string v7, "\u2217"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xb7

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&radic;"

    aput-object v7, v6, v9

    const-string v7, "&#8730;"

    aput-object v7, v6, v10

    const-string v7, "\u221a"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xb8

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&prop;"

    aput-object v7, v6, v9

    const-string v7, "&#8733;"

    aput-object v7, v6, v10

    const-string v7, "\u221d"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xb9

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&infin;"

    aput-object v7, v6, v9

    const-string v7, "&#8734;"

    aput-object v7, v6, v10

    const-string v7, "\u221e"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xba

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&ang;"

    aput-object v7, v6, v9

    const-string v7, "&#8736;"

    aput-object v7, v6, v10

    const-string v7, "\u2220"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xbb

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&and;"

    aput-object v7, v6, v9

    const-string v7, "&#8743;"

    aput-object v7, v6, v10

    const-string v7, "\u2227"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xbc

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&or;"

    aput-object v7, v6, v9

    const-string v7, "&#8744;"

    aput-object v7, v6, v10

    const-string v7, "\u2228"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xbd

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&cap;"

    aput-object v7, v6, v9

    const-string v7, "&#8745;"

    aput-object v7, v6, v10

    const-string v7, "\u2229"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xbe

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&cup;"

    aput-object v7, v6, v9

    const-string v7, "&#8746;"

    aput-object v7, v6, v10

    const-string v7, "\u222a"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xbf

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&int;"

    aput-object v7, v6, v9

    const-string v7, "&#8747;"

    aput-object v7, v6, v10

    const-string v7, "\u222b"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xc0

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&there4;"

    aput-object v7, v6, v9

    const-string v7, "&#8756;"

    aput-object v7, v6, v10

    const-string v7, "\u2234"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xc1

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&sim;"

    aput-object v7, v6, v9

    const-string v7, "&#8764;"

    aput-object v7, v6, v10

    const-string v7, "\u223c"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xc2

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&cong;"

    aput-object v7, v6, v9

    const-string v7, "&#8773;"

    aput-object v7, v6, v10

    const-string v7, "\u2245"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xc3

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&asymp;"

    aput-object v7, v6, v9

    const-string v7, "&#8776;"

    aput-object v7, v6, v10

    const-string v7, "\u2248"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xc4

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&ne;"

    aput-object v7, v6, v9

    const-string v7, "&#8800;"

    aput-object v7, v6, v10

    const-string v7, "\u2260"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xc5

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&equiv;"

    aput-object v7, v6, v9

    const-string v7, "&#8801;"

    aput-object v7, v6, v10

    const-string v7, "\u2261"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xc6

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&le;"

    aput-object v7, v6, v9

    const-string v7, "&#8804;"

    aput-object v7, v6, v10

    const-string v7, "\u2264"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xc7

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&ge;"

    aput-object v7, v6, v9

    const-string v7, "&#8805;"

    aput-object v7, v6, v10

    const-string v7, "\u2265"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xc8

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&sub;"

    aput-object v7, v6, v9

    const-string v7, "&#8834;"

    aput-object v7, v6, v10

    const-string v7, "\u2282"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xc9

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&sup;"

    aput-object v7, v6, v9

    const-string v7, "&#8835;"

    aput-object v7, v6, v10

    const-string v7, "\u2283"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xca

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&sube;"

    aput-object v7, v6, v9

    const-string v7, "&#8838;"

    aput-object v7, v6, v10

    const-string v7, "\u2286"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xcb

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&supe;"

    aput-object v7, v6, v9

    const-string v7, "&#8839;"

    aput-object v7, v6, v10

    const-string v7, "\u2287"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xcc

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&oplus;"

    aput-object v7, v6, v9

    const-string v7, "&#8853;"

    aput-object v7, v6, v10

    const-string v7, "\u2295"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xcd

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&otimes;"

    aput-object v7, v6, v9

    const-string v7, "&#8855;"

    aput-object v7, v6, v10

    const-string v7, "\u2297"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xce

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&perp;"

    aput-object v7, v6, v9

    const-string v7, "&#8869;"

    aput-object v7, v6, v10

    const-string v7, "\u22a5"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xcf

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&sdot;"

    aput-object v7, v6, v9

    const-string v7, "&#8901;"

    aput-object v7, v6, v10

    const-string v7, "\u22c5"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xd0

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&lceil;"

    aput-object v7, v6, v9

    const-string v7, "&#8968;"

    aput-object v7, v6, v10

    const-string v7, "\u2308"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xd1

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&rceil;"

    aput-object v7, v6, v9

    const-string v7, "&#8969;"

    aput-object v7, v6, v10

    const-string v7, "\u2309"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xd2

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&lfloor;"

    aput-object v7, v6, v9

    const-string v7, "&#8970;"

    aput-object v7, v6, v10

    const-string v7, "\u230a"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xd3

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&rfloor;"

    aput-object v7, v6, v9

    const-string v7, "&#8971;"

    aput-object v7, v6, v10

    const-string v7, "\u230b"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xd4

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&lang;"

    aput-object v7, v6, v9

    const-string v7, "&#9001;"

    aput-object v7, v6, v10

    const-string v7, "\u2329"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xd5

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&rang;"

    aput-object v7, v6, v9

    const-string v7, "&#9002;"

    aput-object v7, v6, v10

    const-string v7, "\u232a"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xd6

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&loz;"

    aput-object v7, v6, v9

    const-string v7, "&#9674;"

    aput-object v7, v6, v10

    const-string v7, "\u25ca"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xd7

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&spades;"

    aput-object v7, v6, v9

    const-string v7, "&#9824;"

    aput-object v7, v6, v10

    const-string v7, "\u2660"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xd8

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&clubs;"

    aput-object v7, v6, v9

    const-string v7, "&#9827;"

    aput-object v7, v6, v10

    const-string v7, "\u2663"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xd9

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&hearts;"

    aput-object v7, v6, v9

    const-string v7, "&#9829;"

    aput-object v7, v6, v10

    const-string v7, "\u2665"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xda

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&diams;"

    aput-object v7, v6, v9

    const-string v7, "&#9830;"

    aput-object v7, v6, v10

    const-string v7, "\u2666"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xdb

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&quot;"

    aput-object v7, v6, v9

    const-string v7, "&#34;"

    aput-object v7, v6, v10

    const-string v7, "\""

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xdc

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&amp;"

    aput-object v7, v6, v9

    const-string v7, "&#38;"

    aput-object v7, v6, v10

    const-string v7, "&"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xdd

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&lt;"

    aput-object v7, v6, v9

    const-string v7, "&#60;"

    aput-object v7, v6, v10

    const-string v7, "<"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xde

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&gt;"

    aput-object v7, v6, v9

    const-string v7, "&#62;"

    aput-object v7, v6, v10

    const-string v7, ">"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xdf

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&OElig;"

    aput-object v7, v6, v9

    const-string v7, "&#338;"

    aput-object v7, v6, v10

    const-string v7, "\u0152"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xe0

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&oelig;"

    aput-object v7, v6, v9

    const-string v7, "&#339;"

    aput-object v7, v6, v10

    const-string v7, "\u0153"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xe1

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Scaron;"

    aput-object v7, v6, v9

    const-string v7, "&#352;"

    aput-object v7, v6, v10

    const-string v7, "\u0160"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xe2

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&scaron;"

    aput-object v7, v6, v9

    const-string v7, "&#353;"

    aput-object v7, v6, v10

    const-string v7, "\u0161"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xe3

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Yuml;"

    aput-object v7, v6, v9

    const-string v7, "&#376;"

    aput-object v7, v6, v10

    const-string v7, "\u0178"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xe4

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&circ;"

    aput-object v7, v6, v9

    const-string v7, "&#710;"

    aput-object v7, v6, v10

    const-string v7, "\u02c6"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xe5

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&tilde;"

    aput-object v7, v6, v9

    const-string v7, "&#732;"

    aput-object v7, v6, v10

    const-string v7, "\u02dc"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xe6

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&ensp;"

    aput-object v7, v6, v9

    const-string v7, "&#8194;"

    aput-object v7, v6, v10

    const-string v7, "\u2002"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xe7

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&emsp;"

    aput-object v7, v6, v9

    const-string v7, "&#8195;"

    aput-object v7, v6, v10

    const-string v7, "\u2003"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xe8

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&thinsp;"

    aput-object v7, v6, v9

    const-string v7, "&#8201;"

    aput-object v7, v6, v10

    const-string v7, "\u2009"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xe9

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&zwnj;"

    aput-object v7, v6, v9

    const-string v7, "&#8204;"

    aput-object v7, v6, v10

    const-string v7, "\u200c"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xea

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&zwj;"

    aput-object v7, v6, v9

    const-string v7, "&#8205;"

    aput-object v7, v6, v10

    const-string v7, "\u200d"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xeb

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&lrm;"

    aput-object v7, v6, v9

    const-string v7, "&#8206;"

    aput-object v7, v6, v10

    const-string v7, "\u200e"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xec

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&rlm;"

    aput-object v7, v6, v9

    const-string v7, "&#8207;"

    aput-object v7, v6, v10

    const-string v7, "\u200f"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xed

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&ndash;"

    aput-object v7, v6, v9

    const-string v7, "&#8211;"

    aput-object v7, v6, v10

    const-string v7, "\u2013"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xee

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&mdash;"

    aput-object v7, v6, v9

    const-string v7, "&#8212;"

    aput-object v7, v6, v10

    const-string v7, "\u2014"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xef

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&lsquo;"

    aput-object v7, v6, v9

    const-string v7, "&#8216;"

    aput-object v7, v6, v10

    const-string v7, "\u2018"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xf0

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&rsquo;"

    aput-object v7, v6, v9

    const-string v7, "&#8217;"

    aput-object v7, v6, v10

    const-string v7, "\u2019"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xf1

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&sbquo;"

    aput-object v7, v6, v9

    const-string v7, "&#8218;"

    aput-object v7, v6, v10

    const-string v7, "\u201a"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xf2

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&ldquo;"

    aput-object v7, v6, v9

    const-string v7, "&#8220;"

    aput-object v7, v6, v10

    const-string v7, "\u201c"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xf3

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&rdquo;"

    aput-object v7, v6, v9

    const-string v7, "&#8221;"

    aput-object v7, v6, v10

    const-string v7, "\u201d"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xf4

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&bdquo;"

    aput-object v7, v6, v9

    const-string v7, "&#8222;"

    aput-object v7, v6, v10

    const-string v7, "\u201e"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xf5

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&dagger;"

    aput-object v7, v6, v9

    const-string v7, "&#8224;"

    aput-object v7, v6, v10

    const-string v7, "\u2020"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xf6

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&Dagger;"

    aput-object v7, v6, v9

    const-string v7, "&#8225;"

    aput-object v7, v6, v10

    const-string v7, "\u2021"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xf7

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&permil;"

    aput-object v7, v6, v9

    const-string v7, "&#8240;"

    aput-object v7, v6, v10

    const-string v7, "\u2030"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xf8

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&lsaquo;"

    aput-object v7, v6, v9

    const-string v7, "&#8249;"

    aput-object v7, v6, v10

    const-string v7, "\u2039"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xf9

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&rsaquo;"

    aput-object v7, v6, v9

    const-string v7, "&#8250;"

    aput-object v7, v6, v10

    const-string v7, "\u203a"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    const/16 v5, 0xfa

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "&euro;"

    aput-object v7, v6, v9

    const-string v7, "&#8364;"

    aput-object v7, v6, v10

    const-string v7, "\u20ac"

    aput-object v7, v6, v8

    aput-object v6, v1, v5

    .line 367
    .local v1, entities:[[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 368
    .local v2, entity:[Ljava/lang/String;
    sget-object v5, Ltwitter4j/http/HTMLEntity;->entityEscapeMap:Ljava/util/Map;

    aget-object v6, v2, v8

    aget-object v7, v2, v9

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v5, Ltwitter4j/http/HTMLEntity;->escapeEntityMap:Ljava/util/Map;

    aget-object v6, v2, v9

    aget-object v7, v2, v8

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v5, Ltwitter4j/http/HTMLEntity;->escapeEntityMap:Ljava/util/Map;

    aget-object v6, v2, v10

    aget-object v7, v2, v8

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 372
    .end local v2           #entity:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "original"

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-static {v0}, Ltwitter4j/http/HTMLEntity;->escape(Ljava/lang/StringBuffer;)V

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static escape(Ljava/lang/StringBuffer;)V
    .locals 4
    .parameter "original"

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 42
    .local v1, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 43
    sget-object v2, Ltwitter4j/http/HTMLEntity;->entityEscapeMap:Ljava/util/Map;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    .local v0, escaped:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 45
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1, v2, v0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 48
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v0           #escaped:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "original"

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-static {v0}, Ltwitter4j/http/HTMLEntity;->unescape(Ljava/lang/StringBuffer;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static unescape(Ljava/lang/StringBuffer;)V
    .locals 7
    .parameter "original"

    .prologue
    const/4 v6, -0x1

    .line 60
    const/4 v2, 0x0

    .line 61
    .local v2, index:I
    const/4 v3, 0x0

    .line 64
    .local v3, semicolonIndex:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 65
    const-string v4, "&"

    invoke-virtual {p0, v4, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 66
    if-ne v6, v2, :cond_1

    .line 81
    :cond_0
    return-void

    .line 69
    :cond_1
    const-string v4, ";"

    invoke-virtual {p0, v4, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 70
    if-eq v6, v3, :cond_0

    const/16 v4, 0xa

    sub-int v5, v3, v2

    if-le v4, v5, :cond_0

    .line 71
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, escaped:Ljava/lang/String;
    sget-object v4, Ltwitter4j/http/HTMLEntity;->escapeEntityMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    .local v0, entity:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 74
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v2, v4, v0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
