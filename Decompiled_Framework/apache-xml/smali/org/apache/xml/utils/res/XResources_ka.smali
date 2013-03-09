.class public Lorg/apache/xml/utils/res/XResources_ka;
.super Lorg/apache/xml/utils/res/XResourceBundle;
.source "XResources_ka.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xml/utils/res/XResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 10

    const/4 v9, 0x4

    const/16 v5, 0x9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v0, 0xd

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "ui_language"

    aput-object v2, v1, v6

    const-string v2, "ka"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "help_language"

    aput-object v2, v1, v6

    const-string v2, "ka"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "language"

    aput-object v2, v1, v6

    const-string v2, "ka"

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "alphabet"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v4, 0x24

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "tradAlphabet"

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v3, 0x1a

    new-array v3, v3, [C

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v2, v1, v7

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "orientation"

    aput-object v3, v2, v6

    const-string v3, "LeftToRight"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "numbering"

    aput-object v3, v2, v6

    const-string v3, "additive"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "numberGroups"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/IntArrayWrapper;

    new-array v4, v9, [I

    fill-array-data v4, :array_2

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/IntArrayWrapper;-><init>([I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "digits"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v4, v5, [C

    fill-array-data v4, :array_3

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "tens"

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v3, v5, [C

    fill-array-data v3, :array_4

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    const/16 v1, 0xa

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "hundreds"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v4, v5, [C

    fill-array-data v4, :array_5

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "thousands"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v4, v5, [C

    fill-array-data v4, :array_6

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "tables"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/StringArrayWrapper;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "thousands"

    aput-object v5, v4, v6

    const-string v5, "hundreds"

    aput-object v5, v4, v7

    const-string v5, "tens"

    aput-object v5, v4, v8

    const/4 v5, 0x3

    const-string v6, "digits"

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/StringArrayWrapper;-><init>([Ljava/lang/String;)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    return-object v0

    nop

    :array_0
    .array-data 0x2
        0xd0t 0x10t
        0xd1t 0x10t
        0xd2t 0x10t
        0xd3t 0x10t
        0xd4t 0x10t
        0xd5t 0x10t
        0xd6t 0x10t
        0xf1t 0x10t
        0xd7t 0x10t
        0xd8t 0x10t
        0xd9t 0x10t
        0xdat 0x10t
        0xdbt 0x10t
        0xdct 0x10t
        0xf2t 0x10t
        0xddt 0x10t
        0xdet 0x10t
        0xdft 0x10t
        0xe0t 0x10t
        0xe1t 0x10t
        0xe2t 0x10t
        0xe3t 0x10t
        0xe4t 0x10t
        0xe5t 0x10t
        0xe6t 0x10t
        0xe7t 0x10t
        0xe8t 0x10t
        0xe9t 0x10t
        0xeat 0x10t
        0xebt 0x10t
        0xect 0x10t
        0xedt 0x10t
        0xeet 0x10t
        0xf4t 0x10t
        0xeft 0x10t
        0xf0t 0x10t
    .end array-data

    :array_1
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x2
        0xd0t 0x10t
        0xd1t 0x10t
        0xd2t 0x10t
        0xd3t 0x10t
        0xd4t 0x10t
        0xd5t 0x10t
        0xd6t 0x10t
        0xf1t 0x10t
        0xd7t 0x10t
    .end array-data

    nop

    :array_4
    .array-data 0x2
        0xd8t 0x10t
        0xd9t 0x10t
        0xdat 0x10t
        0xdbt 0x10t
        0xdct 0x10t
        0xf2t 0x10t
        0xddt 0x10t
        0xdet 0x10t
        0xdft 0x10t
    .end array-data

    nop

    :array_5
    .array-data 0x2
        0xe0t 0x10t
        0xe1t 0x10t
        0xe2t 0x10t
        0xe3t 0x10t
        0xe4t 0x10t
        0xe5t 0x10t
        0xe6t 0x10t
        0xe7t 0x10t
        0xe8t 0x10t
    .end array-data

    nop

    :array_6
    .array-data 0x2
        0xe9t 0x10t
        0xeat 0x10t
        0xebt 0x10t
        0xect 0x10t
        0xedt 0x10t
        0xeet 0x10t
        0xf4t 0x10t
        0xeft 0x10t
        0xf0t 0x10t
    .end array-data
.end method
