.class public Ltwitter4j/http/BASE64Encoder;
.super Ljava/lang/Object;
.source "BASE64Encoder.java"


# static fields
.field private static final encodeTable:[C

.field private static final last2byte:C

.field private static final last4byte:C

.field private static final last6byte:C

.field private static final lead2byte:C

.field private static final lead4byte:C

.field private static final lead6byte:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 34
    const-string v0, "00000011"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Ltwitter4j/http/BASE64Encoder;->last2byte:C

    .line 35
    const-string v0, "00001111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Ltwitter4j/http/BASE64Encoder;->last4byte:C

    .line 36
    const-string v0, "00111111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Ltwitter4j/http/BASE64Encoder;->last6byte:C

    .line 37
    const-string v0, "11111100"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Ltwitter4j/http/BASE64Encoder;->lead6byte:C

    .line 38
    const-string v0, "11110000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Ltwitter4j/http/BASE64Encoder;->lead4byte:C

    .line 39
    const-string v0, "11000000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Ltwitter4j/http/BASE64Encoder;->lead2byte:C

    .line 40
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ltwitter4j/http/BASE64Encoder;->encodeTable:[C

    return-void

    nop

    :array_0
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
        0x2bt 0x0t
        0x2ft 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public encode([B)Ljava/lang/String;
    .locals 8
    .parameter "from"

    .prologue
    .line 46
    new-instance v3, Ljava/lang/StringBuffer;

    array-length v4, p1

    int-to-double v4, v4

    const-wide v6, 0x3ff570a3d70a3d71L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 47
    .local v3, to:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 48
    .local v2, num:I
    const/4 v0, 0x0

    .line 49
    .local v0, currentByte:C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 50
    rem-int/lit8 v2, v2, 0x8

    .line 51
    :goto_1
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    .line 52
    packed-switch v2, :pswitch_data_0

    .line 75
    :cond_0
    :goto_2
    :pswitch_0
    sget-object v4, Ltwitter4j/http/BASE64Encoder;->encodeTable:[C

    aget-char v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 76
    add-int/lit8 v2, v2, 0x6

    goto :goto_1

    .line 54
    :pswitch_1
    aget-byte v4, p1, v1

    sget-char v5, Ltwitter4j/http/BASE64Encoder;->lead6byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    .line 55
    ushr-int/lit8 v4, v0, 0x2

    int-to-char v0, v4

    .line 56
    goto :goto_2

    .line 58
    :pswitch_2
    aget-byte v4, p1, v1

    sget-char v5, Ltwitter4j/http/BASE64Encoder;->last6byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    .line 59
    goto :goto_2

    .line 61
    :pswitch_3
    aget-byte v4, p1, v1

    sget-char v5, Ltwitter4j/http/BASE64Encoder;->last4byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    .line 62
    shl-int/lit8 v4, v0, 0x2

    int-to-char v0, v4

    .line 63
    add-int/lit8 v4, v1, 0x1

    array-length v5, p1

    if-ge v4, v5, :cond_0

    .line 64
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p1, v4

    sget-char v5, Ltwitter4j/http/BASE64Encoder;->lead2byte:C

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v0

    int-to-char v0, v4

    goto :goto_2

    .line 68
    :pswitch_4
    aget-byte v4, p1, v1

    sget-char v5, Ltwitter4j/http/BASE64Encoder;->last2byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    .line 69
    shl-int/lit8 v4, v0, 0x4

    int-to-char v0, v4

    .line 70
    add-int/lit8 v4, v1, 0x1

    array-length v5, p1

    if-ge v4, v5, :cond_0

    .line 71
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p1, v4

    sget-char v5, Ltwitter4j/http/BASE64Encoder;->lead4byte:C

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v0

    int-to-char v0, v4

    goto :goto_2

    .line 49
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    .line 80
    const/4 v4, 0x4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    rem-int/lit8 v5, v5, 0x4

    sub-int v1, v4, v5

    :goto_3
    if-lez v1, :cond_3

    .line 81
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 84
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
