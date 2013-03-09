.class public final Ljava/lang/IntegralToString;
.super Ljava/lang/Object;
.source "IntegralToString.java"


# static fields
.field private static final BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field

.field private static final DIGITS:[C

.field private static final MOD_10_TABLE:[C

.field private static final ONES:[C

.field private static final SMALL_NEGATIVE_VALUES:[Ljava/lang/String;

.field private static final SMALL_NONNEGATIVE_VALUES:[Ljava/lang/String;

.field private static final TENS:[C

.field private static final UPPER_CASE_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x24

    const/16 v1, 0x64

    new-instance v0, Ljava/lang/IntegralToString$1;

    invoke-direct {v0}, Ljava/lang/IntegralToString$1;-><init>()V

    sput-object v0, Ljava/lang/IntegralToString;->BUFFER:Ljava/lang/ThreadLocal;

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Ljava/lang/IntegralToString;->SMALL_NONNEGATIVE_VALUES:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Ljava/lang/IntegralToString;->SMALL_NEGATIVE_VALUES:[Ljava/lang/String;

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljava/lang/IntegralToString;->TENS:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Ljava/lang/IntegralToString;->ONES:[C

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Ljava/lang/IntegralToString;->MOD_10_TABLE:[C

    new-array v0, v2, [C

    fill-array-data v0, :array_3

    sput-object v0, Ljava/lang/IntegralToString;->DIGITS:[C

    new-array v0, v2, [C

    fill-array-data v0, :array_4

    sput-object v0, Ljava/lang/IntegralToString;->UPPER_CASE_DIGITS:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
    .end array-data

    :array_1
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data

    :array_2
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
    .end array-data

    :array_4
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
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
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendByteAsHex(Ljava/lang/StringBuilder;BZ)Ljava/lang/StringBuilder;
    .locals 2

    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/IntegralToString;->UPPER_CASE_DIGITS:[C

    :goto_0
    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v1, p1, 0xf

    aget-char v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/IntegralToString;->DIGITS:[C

    goto :goto_0
.end method

.method public static appendInt(Ljava/lang/AbstractStringBuilder;I)V
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->convertInt(Ljava/lang/AbstractStringBuilder;I)Ljava/lang/String;

    return-void
.end method

.method public static appendLong(Ljava/lang/AbstractStringBuilder;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/lang/IntegralToString;->convertLong(Ljava/lang/AbstractStringBuilder;J)Ljava/lang/String;

    return-void
.end method

.method public static byteToHexString(BZ)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Ljava/lang/IntegralToString;->UPPER_CASE_DIGITS:[C

    :goto_0
    new-array v0, v5, [C

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v1, v2

    aput-char v2, v0, v4

    const/4 v2, 0x1

    and-int/lit8 v3, p0, 0xf

    aget-char v3, v1, v3

    aput-char v3, v0, v2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    return-object v2

    :cond_0
    sget-object v1, Ljava/lang/IntegralToString;->DIGITS:[C

    goto :goto_0
.end method

.method public static bytesToHexString([BZ)Ljava/lang/String;
    .locals 9

    if-eqz p1, :cond_0

    sget-object v5, Ljava/lang/IntegralToString;->UPPER_CASE_DIGITS:[C

    :goto_0
    array-length v8, p0

    mul-int/lit8 v8, v8, 0x2

    new-array v2, v8, [C

    const/4 v3, 0x0

    move-object v0, p0

    array-length v7, v0

    const/4 v6, 0x0

    move v4, v3

    :goto_1
    if-ge v6, v7, :cond_1

    aget-byte v1, v0, v6

    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 v8, v1, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v5, v8

    aput-char v8, v2, v4

    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v8, v1, 0xf

    aget-char v8, v5, v8

    aput-char v8, v2, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    sget-object v5, Ljava/lang/IntegralToString;->DIGITS:[C

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([C)V

    return-object v8
.end method

.method private static convertInt(Ljava/lang/AbstractStringBuilder;I)Ljava/lang/String;
    .locals 14

    const/16 v8, 0xa

    const/16 v13, 0x2d

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-gez p1, :cond_4

    const/4 v3, 0x1

    neg-int p1, p1

    const/16 v7, 0x64

    if-ge p1, v7, :cond_0

    if-gez p1, :cond_2

    const-string v5, "-2147483648"

    :cond_0
    :goto_0
    if-eqz v5, :cond_6

    if-eqz p0, :cond_1

    invoke-virtual {p0, v5}, Ljava/lang/AbstractStringBuilder;->append0(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_1
    :goto_1
    return-object v5

    :cond_2
    sget-object v7, Ljava/lang/IntegralToString;->SMALL_NEGATIVE_VALUES:[Ljava/lang/String;

    aget-object v5, v7, p1

    if-nez v5, :cond_0

    sget-object v7, Ljava/lang/IntegralToString;->SMALL_NEGATIVE_VALUES:[Ljava/lang/String;

    if-ge p1, v8, :cond_3

    new-array v8, v12, [C

    aput-char v13, v8, v10

    sget-object v9, Ljava/lang/IntegralToString;->ONES:[C

    aget-char v9, v9, p1

    aput-char v9, v8, v11

    invoke-static {v8}, Ljava/lang/IntegralToString;->stringOf([C)Ljava/lang/String;

    move-result-object v5

    :goto_2
    aput-object v5, v7, p1

    goto :goto_0

    :cond_3
    const/4 v8, 0x3

    new-array v8, v8, [C

    aput-char v13, v8, v10

    sget-object v9, Ljava/lang/IntegralToString;->TENS:[C

    aget-char v9, v9, p1

    aput-char v9, v8, v11

    sget-object v9, Ljava/lang/IntegralToString;->ONES:[C

    aget-char v9, v9, p1

    aput-char v9, v8, v12

    invoke-static {v8}, Ljava/lang/IntegralToString;->stringOf([C)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    const/16 v7, 0x64

    if-ge p1, v7, :cond_0

    sget-object v7, Ljava/lang/IntegralToString;->SMALL_NONNEGATIVE_VALUES:[Ljava/lang/String;

    aget-object v5, v7, p1

    if-nez v5, :cond_0

    sget-object v7, Ljava/lang/IntegralToString;->SMALL_NONNEGATIVE_VALUES:[Ljava/lang/String;

    if-ge p1, v8, :cond_5

    new-array v8, v11, [C

    sget-object v9, Ljava/lang/IntegralToString;->ONES:[C

    aget-char v9, v9, p1

    aput-char v9, v8, v10

    invoke-static {v8}, Ljava/lang/IntegralToString;->stringOf([C)Ljava/lang/String;

    move-result-object v5

    :goto_3
    aput-object v5, v7, p1

    goto :goto_0

    :cond_5
    new-array v8, v12, [C

    sget-object v9, Ljava/lang/IntegralToString;->TENS:[C

    aget-char v9, v9, p1

    aput-char v9, v8, v10

    sget-object v9, Ljava/lang/IntegralToString;->ONES:[C

    aget-char v9, v9, p1

    aput-char v9, v8, v11

    invoke-static {v8}, Ljava/lang/IntegralToString;->stringOf([C)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_6
    const/16 v1, 0xb

    if-eqz p0, :cond_7

    sget-object v7, Ljava/lang/IntegralToString;->BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [C

    move-object v0, v7

    :goto_4
    move v2, v1

    :goto_5
    const/high16 v7, 0x1

    if-lt p1, v7, :cond_8

    const-wide/32 v7, 0x51eb851f

    int-to-long v9, p1

    mul-long/2addr v7, v9

    const/16 v9, 0x25

    ushr-long/2addr v7, v9

    long-to-int v4, v7

    mul-int/lit8 v7, v4, 0x64

    sub-int v6, p1, v7

    add-int/lit8 v2, v2, -0x1

    sget-object v7, Ljava/lang/IntegralToString;->ONES:[C

    aget-char v7, v7, v6

    aput-char v7, v0, v2

    add-int/lit8 v2, v2, -0x1

    sget-object v7, Ljava/lang/IntegralToString;->TENS:[C

    aget-char v7, v7, v6

    aput-char v7, v0, v2

    move p1, v4

    goto :goto_5

    :cond_7
    new-array v0, v1, [C

    goto :goto_4

    :cond_8
    :goto_6
    if-eqz p1, :cond_9

    const v7, 0xcccd

    mul-int/2addr v7, p1

    ushr-int/lit8 v4, v7, 0x13

    mul-int/lit8 v7, v4, 0xa

    sub-int v6, p1, v7

    add-int/lit8 v2, v2, -0x1

    sget-object v7, Ljava/lang/IntegralToString;->DIGITS:[C

    aget-char v7, v7, v6

    aput-char v7, v0, v2

    move p1, v4

    goto :goto_6

    :cond_9
    if-eqz v3, :cond_a

    add-int/lit8 v2, v2, -0x1

    aput-char v13, v0, v2

    :cond_a
    if-eqz p0, :cond_b

    sub-int v7, v1, v2

    invoke-virtual {p0, v0, v2, v7}, Ljava/lang/AbstractStringBuilder;->append0([CII)V

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_b
    new-instance v5, Ljava/lang/String;

    sub-int v7, v1, v2

    invoke-direct {v5, v2, v7, v0}, Ljava/lang/String;-><init>(II[C)V

    goto/16 :goto_1
.end method

.method private static convertLong(Ljava/lang/AbstractStringBuilder;J)Ljava/lang/String;
    .locals 17

    move-wide/from16 v0, p1

    long-to-int v6, v0

    int-to-long v13, v6

    cmp-long v13, v13, p1

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Ljava/lang/IntegralToString;->convertInt(Ljava/lang/AbstractStringBuilder;I)Ljava/lang/String;

    move-result-object v11

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    const-wide/16 v13, 0x0

    cmp-long v13, p1, v13

    if-gez v13, :cond_2

    const/4 v10, 0x1

    :goto_1
    if-eqz v10, :cond_3

    move-wide/from16 v0, p1

    neg-long v0, v0

    move-wide/from16 p1, v0

    const-wide/16 v13, 0x0

    cmp-long v13, p1, v13

    if-gez v13, :cond_3

    const-string v11, "-9223372036854775808"

    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/AbstractStringBuilder;->append0(Ljava/lang/String;)V

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    const/16 v3, 0x14

    if-eqz p0, :cond_4

    sget-object v13, Ljava/lang/IntegralToString;->BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [C

    move-object v2, v13

    :goto_2
    const-wide/32 v13, 0x3b9aca00

    rem-long v13, p1, v13

    long-to-int v8, v13

    invoke-static {v2, v3, v8}, Ljava/lang/IntegralToString;->intIntoCharArray([CII)I

    move-result v4

    :goto_3
    const/16 v13, 0xb

    if-eq v4, v13, :cond_5

    add-int/lit8 v4, v4, -0x1

    const/16 v13, 0x30

    aput-char v13, v2, v4

    goto :goto_3

    :cond_4
    new-array v2, v3, [C

    goto :goto_2

    :cond_5
    int-to-long v13, v8

    sub-long v13, p1, v13

    const/16 v15, 0x9

    ushr-long/2addr v13, v15

    const-wide v15, -0x71b831bdc5d16393L

    mul-long p1, v13, v15

    const-wide v13, -0x100000000L

    and-long v13, v13, p1

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_7

    move-wide/from16 v0, p1

    long-to-int v13, v0

    invoke-static {v2, v4, v13}, Ljava/lang/IntegralToString;->intIntoCharArray([CII)I

    move-result v4

    :goto_4
    if-eqz v10, :cond_6

    add-int/lit8 v4, v4, -0x1

    const/16 v13, 0x2d

    aput-char v13, v2, v4

    :cond_6
    if-eqz p0, :cond_9

    sub-int v13, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v13}, Ljava/lang/AbstractStringBuilder;->append0([CII)V

    const/4 v11, 0x0

    goto :goto_0

    :cond_7
    move-wide/from16 v0, p1

    long-to-int v7, v0

    const/16 v13, 0x20

    ushr-long v13, p1, v13

    long-to-int v5, v13

    sget-object v13, Ljava/lang/IntegralToString;->MOD_10_TABLE:[C

    const v14, 0x19999999

    mul-int/2addr v14, v7

    ushr-int/lit8 v15, v7, 0x1

    add-int/2addr v14, v15

    ushr-int/lit8 v15, v7, 0x3

    add-int/2addr v14, v15

    ushr-int/lit8 v14, v14, 0x1c

    aget-char v9, v13, v14

    shl-int/lit8 v13, v5, 0x2

    sub-int/2addr v9, v13

    if-gez v9, :cond_8

    add-int/lit8 v9, v9, 0xa

    :cond_8
    add-int/lit8 v4, v4, -0x1

    sget-object v13, Ljava/lang/IntegralToString;->DIGITS:[C

    aget-char v13, v13, v9

    aput-char v13, v2, v4

    int-to-long v13, v9

    sub-long v13, p1, v13

    const/4 v15, 0x1

    ushr-long/2addr v13, v15

    long-to-int v13, v13

    const v14, -0x33333333

    mul-int v12, v13, v14

    invoke-static {v2, v4, v12}, Ljava/lang/IntegralToString;->intIntoCharArray([CII)I

    move-result v4

    goto :goto_4

    :cond_9
    new-instance v11, Ljava/lang/String;

    sub-int v13, v3, v4

    invoke-direct {v11, v4, v13, v2}, Ljava/lang/String;-><init>(II[C)V

    goto/16 :goto_0
.end method

.method private static intIntoCharArray([CII)I
    .locals 6

    :goto_0
    const/high16 v2, -0x1

    and-int/2addr v2, p2

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x51eb851f

    ushr-int/lit8 v4, p2, 0x2

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const/16 v4, 0x23

    ushr-long/2addr v2, v4

    long-to-int v0, v2

    mul-int/lit8 v2, v0, 0x64

    sub-int v1, p2, v2

    add-int/lit8 p1, p1, -0x1

    sget-object v2, Ljava/lang/IntegralToString;->ONES:[C

    aget-char v2, v2, v1

    aput-char v2, p0, p1

    add-int/lit8 p1, p1, -0x1

    sget-object v2, Ljava/lang/IntegralToString;->TENS:[C

    aget-char v2, v2, v1

    aput-char v2, p0, p1

    move p2, v0

    goto :goto_0

    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    const v2, 0xcccd

    mul-int/2addr v2, p2

    ushr-int/lit8 v0, v2, 0x13

    mul-int/lit8 v2, v0, 0xa

    sub-int v1, p2, v2

    add-int/lit8 p1, p1, -0x1

    sget-object v2, Ljava/lang/IntegralToString;->DIGITS:[C

    aget-char v2, v2, v1

    aput-char v2, p0, p1

    move p2, v0

    goto :goto_1

    :cond_1
    return p1
.end method

.method public static intToBinaryString(I)Ljava/lang/String;
    .locals 5

    const/16 v1, 0x20

    new-array v0, v1, [C

    move v2, v1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    sget-object v3, Ljava/lang/IntegralToString;->DIGITS:[C

    and-int/lit8 v4, p0, 0x1

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    ushr-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-direct {v3, v2, v4, v0}, Ljava/lang/String;-><init>(II[C)V

    return-object v3
.end method

.method public static intToHexString(IZI)Ljava/lang/String;
    .locals 6

    const/16 v1, 0x8

    new-array v0, v1, [C

    move v2, v1

    if-eqz p1, :cond_1

    sget-object v3, Ljava/lang/IntegralToString;->UPPER_CASE_DIGITS:[C

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v4, p0, 0xf

    aget-char v4, v3, v4

    aput-char v4, v0, v2

    ushr-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_0

    sub-int v4, v1, v2

    if-lt v4, p2, :cond_0

    new-instance v4, Ljava/lang/String;

    sub-int v5, v1, v2

    invoke-direct {v4, v2, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    return-object v4

    :cond_1
    sget-object v3, Ljava/lang/IntegralToString;->DIGITS:[C

    goto :goto_0
.end method

.method public static intToOctalString(I)Ljava/lang/String;
    .locals 5

    const/16 v1, 0xb

    new-array v0, v1, [C

    move v2, v1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    sget-object v3, Ljava/lang/IntegralToString;->DIGITS:[C

    and-int/lit8 v4, p0, 0x7

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    ushr-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-direct {v3, v2, v4, v0}, Ljava/lang/String;-><init>(II[C)V

    return-object v3
.end method

.method public static intToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/IntegralToString;->convertInt(Ljava/lang/AbstractStringBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intToString(II)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x2

    if-lt p1, v5, :cond_0

    const/16 v5, 0x24

    if-le p1, v5, :cond_1

    :cond_0
    const/16 p1, 0xa

    :cond_1
    const/16 v5, 0xa

    if-ne p1, v5, :cond_2

    invoke-static {p0}, Ljava/lang/IntegralToString;->intToString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_2
    const/4 v3, 0x0

    if-gez p0, :cond_5

    const/4 v3, 0x1

    :goto_1
    const/16 v5, 0x8

    if-ge p1, v5, :cond_6

    const/16 v1, 0x21

    :goto_2
    new-array v0, v1, [C

    move v2, v1

    :cond_3
    div-int v4, p0, p1

    add-int/lit8 v2, v2, -0x1

    sget-object v5, Ljava/lang/IntegralToString;->DIGITS:[C

    mul-int v6, p1, v4

    sub-int/2addr v6, p0

    aget-char v5, v5, v6

    aput-char v5, v0, v2

    move p0, v4

    if-nez p0, :cond_3

    if-eqz v3, :cond_4

    add-int/lit8 v2, v2, -0x1

    const/16 v5, 0x2d

    aput-char v5, v0, v2

    :cond_4
    new-instance v5, Ljava/lang/String;

    sub-int v6, v1, v2

    invoke-direct {v5, v2, v6, v0}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_0

    :cond_5
    neg-int p0, p0

    goto :goto_1

    :cond_6
    const/16 v1, 0xc

    goto :goto_2
.end method

.method public static longToBinaryString(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v6, 0x0

    long-to-int v3, p0

    cmp-long v4, p0, v6

    if-ltz v4, :cond_0

    int-to-long v4, v3

    cmp-long v4, v4, p0

    if-nez v4, :cond_0

    invoke-static {v3}, Ljava/lang/IntegralToString;->intToBinaryString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    const/16 v1, 0x40

    new-array v0, v1, [C

    move v2, v1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    sget-object v4, Ljava/lang/IntegralToString;->DIGITS:[C

    long-to-int v5, p0

    and-int/lit8 v5, v5, 0x1

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    const/4 v4, 0x1

    ushr-long/2addr p0, v4

    cmp-long v4, p0, v6

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/String;

    sub-int v5, v1, v2

    invoke-direct {v4, v2, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_0
.end method

.method public static longToHexString(J)Ljava/lang/String;
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    long-to-int v3, p0

    cmp-long v4, p0, v7

    if-ltz v4, :cond_0

    int-to-long v4, v3

    cmp-long v4, v4, p0

    if-nez v4, :cond_0

    invoke-static {v3, v6, v6}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    const/16 v1, 0x10

    new-array v0, v1, [C

    move v2, v1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    sget-object v4, Ljava/lang/IntegralToString;->DIGITS:[C

    long-to-int v5, p0

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    const/4 v4, 0x4

    ushr-long/2addr p0, v4

    cmp-long v4, p0, v7

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/String;

    sub-int v5, v1, v2

    invoke-direct {v4, v2, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_0
.end method

.method public static longToOctalString(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v6, 0x0

    long-to-int v3, p0

    cmp-long v4, p0, v6

    if-ltz v4, :cond_0

    int-to-long v4, v3

    cmp-long v4, v4, p0

    if-nez v4, :cond_0

    invoke-static {v3}, Ljava/lang/IntegralToString;->intToOctalString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    const/16 v1, 0x16

    new-array v0, v1, [C

    move v2, v1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    sget-object v4, Ljava/lang/IntegralToString;->DIGITS:[C

    long-to-int v5, p0

    and-int/lit8 v5, v5, 0x7

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    const/4 v4, 0x3

    ushr-long/2addr p0, v4

    cmp-long v4, p0, v6

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/String;

    sub-int v5, v1, v2

    invoke-direct {v4, v2, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_0
.end method

.method public static longToString(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/lang/IntegralToString;->convertLong(Ljava/lang/AbstractStringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static longToString(JI)Ljava/lang/String;
    .locals 12

    const-wide/16 v10, 0x0

    long-to-int v3, p0

    int-to-long v7, v3

    cmp-long v7, v7, p0

    if-nez v7, :cond_0

    invoke-static {v3, p2}, Ljava/lang/IntegralToString;->intToString(II)Ljava/lang/String;

    move-result-object v7

    :goto_0
    return-object v7

    :cond_0
    const/4 v7, 0x2

    if-lt p2, v7, :cond_1

    const/16 v7, 0x24

    if-le p2, v7, :cond_2

    :cond_1
    const/16 p2, 0xa

    :cond_2
    const/16 v7, 0xa

    if-ne p2, v7, :cond_3

    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToString(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    cmp-long v7, p0, v10

    if-gez v7, :cond_6

    const/4 v4, 0x1

    :goto_1
    const/16 v7, 0x8

    if-ge p2, v7, :cond_7

    const/16 v1, 0x41

    :goto_2
    new-array v0, v1, [C

    move v2, v1

    :cond_4
    int-to-long v7, p2

    div-long v5, p0, v7

    add-int/lit8 v2, v2, -0x1

    sget-object v7, Ljava/lang/IntegralToString;->DIGITS:[C

    int-to-long v8, p2

    mul-long/2addr v8, v5

    sub-long/2addr v8, p0

    long-to-int v8, v8

    aget-char v7, v7, v8

    aput-char v7, v0, v2

    move-wide p0, v5

    cmp-long v7, p0, v10

    if-nez v7, :cond_4

    if-eqz v4, :cond_5

    add-int/lit8 v2, v2, -0x1

    const/16 v7, 0x2d

    aput-char v7, v0, v2

    :cond_5
    new-instance v7, Ljava/lang/String;

    sub-int v8, v1, v2

    invoke-direct {v7, v2, v8, v0}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_0

    :cond_6
    neg-long p0, p0

    goto :goto_1

    :cond_7
    const/16 v1, 0x17

    goto :goto_2
.end method

.method private static varargs stringOf([C)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>(II[C)V

    return-object v0
.end method
