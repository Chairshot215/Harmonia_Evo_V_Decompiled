.class public final Lcom/google/android/apps/uploader/googlemobile/common/util/MathUtil;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_LONG_ROOT:J = 0xb504f333L

.field public static final TRIG_MULTIPLIER:I = 0xfa

.field private static final sinArray:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x5b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/common/util/MathUtil;->sinArray:[B

    return-void

    :array_0
    .array-data 0x1
        0x0t
        0x4t
        0x9t
        0xdt
        0x11t
        0x16t
        0x1at
        0x1et
        0x23t
        0x27t
        0x2bt
        0x30t
        0x34t
        0x38t
        0x3ct
        0x41t
        0x45t
        0x49t
        0x4dt
        0x51t
        0x56t
        0x5at
        0x5et
        0x62t
        0x66t
        0x6at
        0x6et
        0x71t
        0x75t
        0x79t
        0x7dt
        0x81t
        0x84t
        0x88t
        0x8ct
        0x8ft
        0x93t
        0x96t
        0x9at
        0x9dt
        0xa1t
        0xa4t
        0xa7t
        0xaat
        0xaet
        0xb1t
        0xb4t
        0xb7t
        0xbat
        0xbdt
        0xc0t
        0xc2t
        0xc5t
        0xc8t
        0xcat
        0xcdt
        0xcft
        0xd2t
        0xd4t
        0xd6t
        0xd9t
        0xdbt
        0xddt
        0xdft
        0xe1t
        0xe3t
        0xe4t
        0xe6t
        0xe8t
        0xe9t
        0xebt
        0xect
        0xeet
        0xeft
        0xf0t
        0xf1t
        0xf3t
        0xf4t
        0xf5t
        0xf5t
        0xf6t
        0xf7t
        0xf8t
        0xf8t
        0xf9t
        0xf9t
        0xf9t
        0xfat
        0xfat
        0xfat
        0xfat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static atan(D)D
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static atan2(DD)D
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ceiledDivision(II)I
    .locals 2

    if-ltz p0, :cond_0

    add-int v0, p0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    div-int v0, p0, p1

    goto :goto_0
.end method

.method public static ceiledLog(I)I
    .locals 2

    const/4 v0, 0x1

    if-ge p0, v0, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    add-int/lit8 v1, p0, -0x1

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static cos(I)I
    .locals 4

    const/16 v3, 0x10e

    const/16 v2, 0x5a

    const/16 v0, 0x168

    invoke-static {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/MathUtil;->normalizeAngle(II)I

    move-result v0

    if-ge v0, v2, :cond_0

    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/common/util/MathUtil;->sinArray:[B

    sub-int v0, v2, v0

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0xb4

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/common/util/MathUtil;->sinArray:[B

    sub-int/2addr v0, v2

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    neg-int v0, v0

    goto :goto_0

    :cond_1
    if-ge v0, v3, :cond_2

    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/common/util/MathUtil;->sinArray:[B

    sub-int v0, v3, v0

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    neg-int v0, v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/common/util/MathUtil;->sinArray:[B

    sub-int/2addr v0, v3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method private static normalizeAngle(II)I
    .locals 1

    rem-int v0, p0, p1

    if-gez v0, :cond_0

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public static roundUp(II)I
    .locals 1

    const/4 v0, 0x1

    if-gez p0, :cond_0

    sub-int v0, p1, v0

    sub-int v0, p0, v0

    div-int/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, v0

    add-int/2addr v0, p0

    div-int/2addr v0, p1

    goto :goto_0
.end method

.method public static roundedDivision(II)I
    .locals 1

    div-int/lit8 v0, p1, 0x2

    add-int/2addr v0, p0

    div-int/2addr v0, p1

    return v0
.end method

.method public static sin(I)I
    .locals 4

    const/16 v3, 0x168

    const/16 v2, 0xb4

    invoke-static {p0, v3}, Lcom/google/android/apps/uploader/googlemobile/common/util/MathUtil;->normalizeAngle(II)I

    move-result v0

    const/16 v1, 0x5a

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/common/util/MathUtil;->sinArray:[B

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_0
    if-ge v0, v2, :cond_1

    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/common/util/MathUtil;->sinArray:[B

    sub-int v0, v2, v0

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_1
    const/16 v1, 0x10e

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/common/util/MathUtil;->sinArray:[B

    sub-int/2addr v0, v2

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    neg-int v0, v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/common/util/MathUtil;->sinArray:[B

    sub-int v0, v3, v0

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    neg-int v0, v0

    goto :goto_0
.end method

.method public static squareRoot(I)I
    .locals 5

    const/4 v1, 0x0

    if-gtz p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    shr-int/lit8 v0, p0, 0xf

    add-int/lit8 v0, v0, 0x2

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_1
    const/16 v2, 0x20

    if-ge v0, v2, :cond_4

    div-int v2, p0, v1

    add-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :goto_2
    div-int v1, p0, v0

    if-le v0, v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    mul-int v1, v0, v0

    mul-int/lit8 v2, v0, 0x2

    sub-int v2, p0, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public static squareRoot(JJJ)J
    .locals 8

    const-wide v0, 0x7ffffffe9ea1dc29L

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide p0, 0xb504f333L

    :goto_0
    return-wide p0

    :cond_0
    const-wide v0, 0xb504f333L

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    add-long v0, p2, p4

    const/4 v2, 0x1

    shr-long/2addr v0, v2

    move-wide v6, v0

    move-wide v0, p2

    move-wide p2, v6

    :goto_1
    sub-long v2, p4, v0

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    mul-long v2, p2, p2

    sub-long v2, p0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    add-long v0, p2, p4

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const/4 v2, 0x1

    shr-long/2addr v0, v2

    move-wide v6, v0

    move-wide v0, p2

    move-wide p2, v6

    goto :goto_1

    :cond_1
    const-wide/16 p4, 0x0

    cmp-long p4, v2, p4

    if-gez p4, :cond_2

    add-long p4, p2, v0

    const/4 v2, 0x1

    shr-long/2addr p4, v2

    move-wide v6, p4

    move-wide p4, p2

    move-wide p2, v6

    goto :goto_1

    :cond_2
    mul-long p4, p2, p2

    cmp-long p0, p4, p0

    if-eqz p0, :cond_3

    move-wide p0, v0

    goto :goto_0

    :cond_3
    move-wide p0, p2

    goto :goto_0
.end method
