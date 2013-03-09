.class public Lorg/apache/xml/utils/res/XResources_cy;
.super Lorg/apache/xml/utils/res/XResourceBundle;
.source "XResources_cy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xml/utils/res/XResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 11

    const/4 v10, 0x3

    const/16 v9, 0x9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v0, 0x10

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "ui_language"

    aput-object v2, v1, v6

    const-string v2, "cy"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "help_language"

    aput-object v2, v1, v6

    const-string v2, "cy"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "language"

    aput-object v2, v1, v6

    const-string v2, "cy"

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "alphabet"

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v3, 0x1b

    new-array v3, v3, [C

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v2, v1, v7

    aput-object v1, v0, v10

    const/4 v1, 0x4

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "tradAlphabet"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v4, 0x1a

    new-array v4, v4, [C

    fill-array-data v4, :array_1

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

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

    const-string v3, "multiplicative-additive"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "multiplierOrder"

    aput-object v3, v2, v6

    const-string v3, "precedes"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "numberGroups"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/IntArrayWrapper;

    new-array v4, v10, [I

    fill-array-data v4, :array_2

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/IntArrayWrapper;-><init>([I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "multiplier"

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/xml/utils/res/LongArrayWrapper;

    new-array v3, v7, [J

    const-wide/16 v4, 0x3e8

    aput-wide v4, v3, v6

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/LongArrayWrapper;-><init>([J)V

    aput-object v2, v1, v7

    aput-object v1, v0, v9

    const/16 v1, 0xa

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "multiplierChar"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v4, v7, [C

    const/16 v5, 0x3d9

    aput-char v5, v4, v6

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "zero"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v4, v6, [C

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "digits"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v4, v9, [C

    fill-array-data v4, :array_3

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "tens"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v4, v9, [C

    fill-array-data v4, :array_4

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "hundreds"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v4, v9, [C

    fill-array-data v4, :array_5

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "tables"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/StringArrayWrapper;

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "hundreds"

    aput-object v5, v4, v6

    const-string v5, "tens"

    aput-object v5, v4, v7

    const-string v5, "digits"

    aput-object v5, v4, v8

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/StringArrayWrapper;-><init>([Ljava/lang/String;)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    return-object v0

    nop

    :array_0
    .array-data 0x2
        0x30t 0x4t
        0x32t 0x4t
        0x33t 0x4t
        0x34t 0x4t
        0x35t 0x4t
        0x37t 0x4t
        0x38t 0x4t
        0x39t 0x4t
        0xa9t 0x4t
        0x57t 0x4t
        0x3at 0x4t
        0x3bt 0x4t
        0x3ct 0x4t
        0x3dt 0x4t
        0x6ft 0x4t
        0x3et 0x4t
        0x3ft 0x4t
        0x47t 0x4t
        0x40t 0x4t
        0x41t 0x4t
        0x42t 0x4t
        0x43t 0x4t
        0x44t 0x4t
        0x45t 0x4t
        0x70t 0x4t
        0x60t 0x4t
        0x46t 0x4t
    .end array-data

    nop

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
        0x64t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x2
        0x30t 0x4t
        0x32t 0x4t
        0x33t 0x4t
        0x34t 0x4t
        0x35t 0x4t
        0x37t 0x4t
        0x38t 0x4t
        0x39t 0x4t
        0xa9t 0x4t
    .end array-data

    nop

    :array_4
    .array-data 0x2
        0x57t 0x4t
        0x3at 0x4t
        0x3bt 0x4t
        0x3ct 0x4t
        0x3dt 0x4t
        0x6ft 0x4t
        0x3et 0x4t
        0x3ft 0x4t
        0x47t 0x4t
    .end array-data

    nop

    :array_5
    .array-data 0x2
        0x40t 0x4t
        0x41t 0x4t
        0x42t 0x4t
        0x43t 0x4t
        0x44t 0x4t
        0x45t 0x4t
        0x70t 0x4t
        0x60t 0x4t
        0x46t 0x4t
    .end array-data
.end method
