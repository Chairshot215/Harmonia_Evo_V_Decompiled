.class public Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;
.super Ljava/lang/Object;
.source "JpegUtil.java"


# static fields
.field private static final JPEG_QUANT_TABLES:[[B

.field private static final imageIoScaleFactor:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x40

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->JPEG_QUANT_TABLES:[[B

    const/16 v0, 0x65

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->imageIoScaleFactor:[I

    return-void

    nop

    :array_0
    .array-data 0x1
        0x10t
        0xbt
        0xct
        0xet
        0xct
        0xat
        0x10t
        0xet
        0xdt
        0xet
        0x12t
        0x11t
        0x10t
        0x13t
        0x18t
        0x28t
        0x1at
        0x18t
        0x16t
        0x16t
        0x18t
        0x31t
        0x23t
        0x25t
        0x1dt
        0x28t
        0x3at
        0x33t
        0x3dt
        0x3ct
        0x39t
        0x33t
        0x38t
        0x37t
        0x40t
        0x48t
        0x5ct
        0x4et
        0x40t
        0x44t
        0x57t
        0x45t
        0x37t
        0x38t
        0x50t
        0x6dt
        0x51t
        0x57t
        0x5ft
        0x62t
        0x67t
        0x68t
        0x67t
        0x3et
        0x4dt
        0x71t
        0x79t
        0x70t
        0x64t
        0x78t
        0x5ct
        0x65t
        0x67t
        0x63t
    .end array-data

    :array_1
    .array-data 0x1
        0x11t
        0x12t
        0x12t
        0x18t
        0x15t
        0x18t
        0x2ft
        0x1at
        0x1at
        0x2ft
        0x63t
        0x42t
        0x38t
        0x42t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
    .end array-data

    :array_2
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x64t
        0x1t 0x0t 0x0t 0x32t
        0x81t 0x55t 0x55t 0x21t
        0x1t 0x0t 0x0t 0x19t
        0x1t 0x0t 0x0t 0x14t
        0xc1t 0xaat 0xaat 0x10t
        0x91t 0x24t 0x49t 0xet
        0x1t 0x0t 0x80t 0xct
        0xc1t 0x71t 0x1ct 0xbt
        0x1t 0x0t 0x0t 0xat
        0xd1t 0x45t 0x17t 0x9t
        0x61t 0x55t 0x55t 0x8t
        0x19t 0x3bt 0xb1t 0x7t
        0x49t 0x92t 0x24t 0x7t
        0xa9t 0xaat 0xaat 0x6t
        0x1t 0x0t 0x40t 0x6t
        0xe1t 0xe1t 0xe1t 0x5t
        0xe1t 0x38t 0x8et 0x5t
        0x51t 0x5et 0x43t 0x5t
        0x1t 0x0t 0x0t 0x5t
        0x31t 0xct 0xc3t 0x4t
        0xe9t 0xa2t 0x8bt 0x4t
        0x21t 0xbt 0x59t 0x4t
        0xb1t 0xaat 0x2at 0x4t
        0x1t 0x0t 0x0t 0x4t
        0x8dt 0x9dt 0xd8t 0x3t
        0xedt 0x25t 0xb4t 0x3t
        0x25t 0x49t 0x92t 0x3t
        0x39t 0xc2t 0x72t 0x3t
        0x55t 0x55t 0x55t 0x3t
        0x75t 0xcet 0x39t 0x3t
        0x1t 0x0t 0x20t 0x3t
        0xf1t 0xc1t 0x7t 0x3t
        0xf1t 0xf0t 0xf0t 0x2t
        0xb9t 0x6dt 0xdbt 0x2t
        0x71t 0x1ct 0xc7t 0x2t
        0x55t 0xe4t 0xb3t 0x2t
        0x29t 0xaft 0xa1t 0x2t
        0x9t 0x69t 0x90t 0x2t
        0x1t 0x0t 0x80t 0x2t
        0xe9t 0x63t 0x70t 0x2t
        0x19t 0x86t 0x61t 0x2t
        0x4dt 0x59t 0x53t 0x2t
        0x75t 0xd1t 0x45t 0x2t
        0x91t 0xe3t 0x38t 0x2t
        0x91t 0x85t 0x2ct 0x2t
        0x4dt 0xaet 0x20t 0x2t
        0x59t 0x55t 0x15t 0x2t
        0xf1t 0x72t 0xat 0x2t
        0x1t 0x0t 0x0t 0x2t
        0x91t 0xc2t 0xf5t 0x1t
        0x21t 0x85t 0xebt 0x1t
        0xb1t 0x47t 0xe1t 0x1t
        0x3dt 0xat 0xd7t 0x1t
        0xcdt 0xcct 0xcct 0x1t
        0x5dt 0x8ft 0xc2t 0x1t
        0xedt 0x51t 0xb8t 0x1t
        0x7dt 0x14t 0xaet 0x1t
        0xdt 0xd7t 0xa3t 0x1t
        0x99t 0x99t 0x99t 0x1t
        0x29t 0x5ct 0x8ft 0x1t
        0xb9t 0x1et 0x85t 0x1t
        0x49t 0xe1t 0x7at 0x1t
        0xd9t 0xa3t 0x70t 0x1t
        0x69t 0x66t 0x66t 0x1t
        0xf5t 0x28t 0x5ct 0x1t
        0x85t 0xebt 0x51t 0x1t
        0x15t 0xaet 0x47t 0x1t
        0xa5t 0x70t 0x3dt 0x1t
        0x35t 0x33t 0x33t 0x1t
        0xc5t 0xf5t 0x28t 0x1t
        0x51t 0xb8t 0x1et 0x1t
        0xe1t 0x7at 0x14t 0x1t
        0x71t 0x3dt 0xat 0x1t
        0x1t 0x0t 0x0t 0x1t
        0x91t 0xc2t 0xf5t 0x0t
        0x21t 0x85t 0xebt 0x0t
        0xb1t 0x47t 0xe1t 0x0t
        0x3dt 0xat 0xd7t 0x0t
        0xcdt 0xcct 0xcct 0x0t
        0x5dt 0x8ft 0xc2t 0x0t
        0xedt 0x51t 0xb8t 0x0t
        0x7dt 0x14t 0xaet 0x0t
        0xdt 0xd7t 0xa3t 0x0t
        0x99t 0x99t 0x99t 0x0t
        0x29t 0x5ct 0x8ft 0x0t
        0xb9t 0x1et 0x85t 0x0t
        0x49t 0xe1t 0x7at 0x0t
        0xd9t 0xa3t 0x70t 0x0t
        0x69t 0x66t 0x66t 0x0t
        0xf5t 0x28t 0x5ct 0x0t
        0x85t 0xebt 0x51t 0x0t
        0x15t 0xaet 0x47t 0x0t
        0xa5t 0x70t 0x3dt 0x0t
        0x35t 0x33t 0x33t 0x0t
        0xc5t 0xf5t 0x28t 0x0t
        0x51t 0xb8t 0x1et 0x0t
        0xe1t 0x7at 0x14t 0x0t
        0x71t 0x3dt 0xat 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getQuantTable(III)[B
    .locals 8

    const/16 v7, 0x40

    const-class v5, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;

    monitor-enter v5

    mul-int/lit16 v4, p0, 0x9a

    mul-int/lit8 v6, p2, 0x4d

    add-int/2addr v4, v6

    add-int/lit8 v6, p1, -0x18

    add-int v0, v4, v6

    const/16 v4, 0x40

    :try_start_0
    new-array v2, v4, [B

    sget-object v4, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->JPEG_QUANT_TABLES:[[B

    aget-object v3, v4, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v7, :cond_0

    aget-byte v4, v3, v1

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4, p1, p2}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->getScaledQuantizationFactor(III)B

    move-result v4

    aput-byte v4, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v5

    return-object v2

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static getScaledQuantizationFactor(III)B
    .locals 6

    const/16 v3, 0x1388

    packed-switch p2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "qualityAlgorithm"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    const/16 v2, 0x63

    if-ne p0, v2, :cond_1

    const/16 v2, 0x24

    if-ne p1, v2, :cond_1

    const/16 v1, 0x8a

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    const/4 v1, 0x1

    :cond_0
    :goto_1
    int-to-byte v2, v1

    return v2

    :cond_1
    int-to-long v2, p0

    sget-object v4, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->imageIoScaleFactor:[I

    aget v4, v4, p1

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x1000000

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    long-to-int v1, v2

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x32

    if-ge p1, v2, :cond_2

    div-int v2, v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    mul-int v2, p0, v0

    add-int/lit8 v2, v2, 0x32

    div-int/lit8 v1, v2, 0x64

    goto :goto_0

    :cond_2
    mul-int/lit8 v2, p1, 0x2

    rsub-int v2, v2, 0xc8

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_3
    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    const/16 v1, 0xff

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static prependStandardHeader([BII[BILandroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;)V
    .locals 8

    invoke-virtual {p5}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->getVariant()I

    move-result v2

    invoke-virtual {p5}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->getWidth()I

    move-result v3

    invoke-virtual {p5}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->getHeight()I

    move-result v4

    invoke-virtual {p5}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->getQuality()I

    move-result v5

    invoke-virtual {p5}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->getQualityAlgorithm()I

    move-result v6

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "variant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->getHeaderLength(I)I

    move-result v7

    add-int v0, p4, v7

    invoke-static {p0, p1, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p3

    move v1, p4

    invoke-static/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->generate([BIIIIII)I

    return-void
.end method

.method public static uncompactJpeg([B)[B
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->uncompactJpeg([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static uncompactJpeg([BII)[B
    .locals 19

    aget-byte v11, p0, p1

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    add-int/lit8 v11, p1, 0x1

    aget-byte v11, p0, v11

    const/16 v12, -0x28

    if-ne v11, v12, :cond_0

    move/from16 v0, p2

    new-array v0, v0, [B

    move-object/from16 v17, v0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v17

    :cond_0
    aget-byte v11, p0, p1

    const/16 v12, 0x43

    if-ne v11, v12, :cond_1

    add-int/lit8 v11, p1, 0x1

    aget-byte v11, p0, v11

    const/16 v12, 0x4a

    if-ne v11, v12, :cond_1

    add-int/lit8 v11, p1, 0x2

    aget-byte v11, p0, v11

    const/16 v12, 0x50

    if-ne v11, v12, :cond_1

    add-int/lit8 v11, p1, 0x3

    aget-byte v11, p0, v11

    const/16 v12, 0x47

    if-eq v11, v12, :cond_2

    :cond_1
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Input is not in compact JPEG format"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_2
    add-int/lit8 v11, p1, 0x4

    aget-byte v11, p0, v11

    and-int/lit16 v5, v11, 0xff

    add-int/lit8 v11, p1, 0x5

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    add-int/lit8 v12, p1, 0x6

    aget-byte v12, p0, v12

    and-int/lit16 v12, v12, 0xff

    or-int v6, v11, v12

    add-int/lit8 v11, p1, 0x7

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    add-int/lit8 v12, p1, 0x8

    aget-byte v12, p0, v12

    and-int/lit16 v12, v12, 0xff

    or-int v7, v11, v12

    add-int/lit8 v11, p1, 0x9

    aget-byte v11, p0, v11

    and-int/lit16 v8, v11, 0xff

    add-int/lit8 v11, p1, 0xa

    aget-byte v11, p0, v11

    and-int/lit16 v9, v11, 0xff

    :try_start_0
    invoke-static {v5}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->getHeaderLength(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    add-int v11, v10, p2

    add-int/lit8 v11, v11, -0xb

    new-array v14, v11, [B

    new-instance v4, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;

    invoke-direct/range {v4 .. v10}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;-><init>(IIIIII)V

    add-int/lit8 v12, p1, 0xb

    add-int/lit8 v13, p2, -0xb

    const/4 v15, 0x0

    move-object/from16 v11, p0

    move-object/from16 v16, v4

    invoke-static/range {v11 .. v16}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->prependStandardHeader([BII[BILandroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;)V

    move-object/from16 v17, v14

    goto :goto_0

    :catch_0
    move-exception v18

    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown variant "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
.end method
