.class public Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;
.super Ljava/lang/Object;
.source "SSLv3Constants.java"


# static fields
.field static final MD5pad1:[B

.field static final MD5pad2:[B

.field static final SHApad1:[B

.field static final SHApad2:[B

.field static final client:[B

.field static final server:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x30

    const/16 v2, 0x28

    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->client:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->server:[B

    new-array v0, v3, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->MD5pad1:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->SHApad1:[B

    new-array v0, v3, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->MD5pad2:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_5

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->SHApad2:[B

    return-void

    :array_0
    .array-data 0x1
        0x43t
        0x4ct
        0x4et
        0x54t
    .end array-data

    :array_1
    .array-data 0x1
        0x53t
        0x52t
        0x56t
        0x52t
    .end array-data

    :array_2
    .array-data 0x1
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
    .end array-data

    :array_3
    .array-data 0x1
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
    .end array-data

    :array_4
    .array-data 0x1
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
    .end array-data

    :array_5
    .array-data 0x1
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
