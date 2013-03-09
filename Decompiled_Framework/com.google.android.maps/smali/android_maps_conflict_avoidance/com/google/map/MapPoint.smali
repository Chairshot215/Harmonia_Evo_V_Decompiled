.class public Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
.super Ljava/lang/Object;
.source "MapPoint.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/map/Geometry;


# static fields
.field private static final PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

.field static mercatorValues:[I

.field static reverseMercatorValues:[I


# instance fields
.field private final latitudeE6:I

.field private final longitudeE6:I

.field private final pixelCoordX:I

.field private final pixelCoordY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->mercatorValues:[I

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->reverseMercatorValues:[I

    const/16 v0, 0x16

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->adjustLongitude(I)I

    move-result p2

    const v0, 0x4c4b400

    if-le p1, v0, :cond_0

    const p1, 0x4c4b400

    :cond_0
    const v0, -0x4c4b400

    if-ge p1, v0, :cond_1

    const p1, -0x4c4b400

    :cond_1
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-static {p2, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixelFromLon(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-static {p1, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixelFromLat(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    const/16 v2, 0x16

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v1

    invoke-static {p1, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->adjustPixelX(II)I

    move-result p1

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v1

    invoke-static {p2, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->adjustPixelY(II)I

    move-result p2

    invoke-virtual {v0, p1, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    move-result v1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    invoke-virtual {v0, p2, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    move-result v1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-static {v1, v2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitudeFromY(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-static {v1, v2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitudeFromX(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 3

    const/16 v2, 0x16

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p5}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->adjustLongitude(I)I

    move-result p5

    iput p4, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    iput p5, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    invoke-static {p3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v1

    invoke-static {p1, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->adjustPixelX(II)I

    move-result p1

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v1

    invoke-static {p2, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->adjustPixelY(II)I

    move-result p2

    invoke-virtual {v0, p1, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    move-result v1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    invoke-virtual {v0, p2, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    move-result v1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    return-void
.end method

.method private static adjustLongitude(I)I
    .locals 2

    const v1, 0x15752a00

    :goto_0
    const v0, -0xaba9500

    if-ge p0, v0, :cond_0

    add-int/2addr p0, v1

    goto :goto_0

    :cond_0
    :goto_1
    const v0, 0xaba9500

    if-le p0, v0, :cond_1

    sub-int/2addr p0, v1

    goto :goto_1

    :cond_1
    return p0
.end method

.method private static adjustPixelX(II)I
    .locals 0

    :goto_0
    if-lt p0, p1, :cond_0

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    :goto_1
    if-gez p0, :cond_1

    add-int/2addr p0, p1

    goto :goto_1

    :cond_1
    return p0
.end method

.method private static adjustPixelY(II)I
    .locals 0

    if-gez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-lt p0, p1, :cond_0

    add-int/lit8 p0, p1, -0x1

    goto :goto_0
.end method

.method private static getLatitudeFromY(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 16

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getReverseMercatorValues()[I

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int v10, v10, p0

    move-object/from16 v0, p1

    invoke-static {v10, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelsToMercator(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const v11, 0x4c4b40

    div-int/2addr v10, v11

    add-int/lit8 v6, v10, 0x1

    array-length v10, v5

    add-int/lit8 v10, v10, -0x2

    if-lt v6, v10, :cond_1

    if-lez v8, :cond_0

    const v10, 0x4c4b400

    :goto_0
    return v10

    :cond_0
    const v10, -0x4c4b400

    goto :goto_0

    :cond_1
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const v11, 0x4c4b40

    rem-int v9, v10, v11

    add-int/lit8 v10, v6, -0x1

    aget v10, v5, v10

    mul-int/lit8 v10, v10, -0x1

    aget v11, v5, v6

    mul-int/lit8 v11, v11, 0x3

    add-int/2addr v10, v11

    add-int/lit8 v11, v6, 0x1

    aget v11, v5, v11

    mul-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    add-int/lit8 v11, v6, 0x2

    aget v11, v5, v11

    add-int/2addr v10, v11

    div-int/lit8 v1, v10, 0x6

    add-int/lit8 v10, v6, -0x1

    aget v10, v5, v10

    mul-int/lit8 v10, v10, 0x3

    aget v11, v5, v6

    mul-int/lit8 v11, v11, 0x6

    sub-int/2addr v10, v11

    add-int/lit8 v11, v6, 0x1

    aget v11, v5, v11

    mul-int/lit8 v11, v11, 0x3

    add-int/2addr v10, v11

    div-int/lit8 v2, v10, 0x6

    add-int/lit8 v10, v6, -0x1

    aget v10, v5, v10

    mul-int/lit8 v10, v10, -0x2

    aget v11, v5, v6

    mul-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    add-int/lit8 v11, v6, 0x1

    aget v11, v5, v11

    mul-int/lit8 v11, v11, 0x6

    add-int/2addr v10, v11

    add-int/lit8 v11, v6, 0x2

    aget v11, v5, v11

    sub-int/2addr v10, v11

    div-int/lit8 v3, v10, 0x6

    aget v4, v5, v6

    int-to-long v10, v1

    int-to-long v12, v9

    mul-long/2addr v10, v12

    int-to-long v12, v9

    mul-long/2addr v10, v12

    const-wide/32 v12, 0x4c4b40

    div-long/2addr v10, v12

    int-to-long v12, v9

    mul-long/2addr v10, v12

    const-wide/32 v12, 0x4c4b40

    div-long/2addr v10, v12

    const-wide/32 v12, 0x4c4b40

    div-long/2addr v10, v12

    int-to-long v12, v2

    int-to-long v14, v9

    mul-long/2addr v12, v14

    int-to-long v14, v9

    mul-long/2addr v12, v14

    const-wide/32 v14, 0x4c4b40

    div-long/2addr v12, v14

    const-wide/32 v14, 0x4c4b40

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    int-to-long v12, v3

    int-to-long v14, v9

    mul-long/2addr v12, v14

    const-wide/32 v14, 0x4c4b40

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    int-to-long v12, v4

    add-long/2addr v10, v12

    long-to-int v7, v10

    const v10, 0x4c4b400

    if-le v7, v10, :cond_2

    const v7, 0x4c4b400

    :cond_2
    if-gez v8, :cond_3

    neg-int v7, v7

    :cond_3
    move v10, v7

    goto/16 :goto_0
.end method

.method private static getLongitudeFromX(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 4

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    int-to-long v0, v0

    const-wide/32 v2, 0x15752a00

    mul-long/2addr v0, v2

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getMapPointFromXY(III)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .locals 1

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-direct {v0, p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;-><init>(III)V

    return-object v0
.end method

.method private static getMercatorIndex(I)I
    .locals 2

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xf4240

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static getMercatorValues()[I
    .locals 4

    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->mercatorValues:[I

    if-nez v2, :cond_0

    const/16 v2, 0x54

    new-array v2, v2, [I

    sput-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->mercatorValues:[I

    const/16 v2, 0xfd

    :try_start_0
    new-array v1, v2, [B

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->createDataInputFromBytes([B)Ljava/io/DataInput;

    move-result-object v2

    sget-object v3, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->mercatorValues:[I

    invoke-static {v2, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->readMercatorValues(Ljava/io/DataInput;[I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->mercatorValues:[I

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t read mercator.dat"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :array_0
    .array-data 0x1
        0xfft
        0xf0t
        0xbdt
        0x8dt
        0xft
        0x42t
        0x73t
        0xft
        0x42t
        0x73t
        0xft
        0x43t
        0xa3t
        0xft
        0x46t
        0x6t
        0xft
        0x49t
        0x99t
        0xft
        0x4et
        0x61t
        0xft
        0x54t
        0x5et
        0xft
        0x5bt
        0x93t
        0xft
        0x64t
        0x2t
        0xft
        0x6dt
        0xb0t
        0xft
        0x78t
        0x9ft
        0xft
        0x84t
        0xd4t
        0xft
        0x92t
        0x54t
        0xft
        0xa1t
        0x26t
        0xft
        0xb1t
        0x4et
        0xft
        0xc2t
        0xd3t
        0xft
        0xd5t
        0xbdt
        0xft
        0xeat
        0x15t
        0xft
        0xfft
        0xe1t
        0x10t
        0x17t
        0x2dt
        0x10t
        0x30t
        0x1t
        0x10t
        0x4at
        0x6bt
        0x10t
        0x66t
        0x74t
        0x10t
        0x84t
        0x2bt
        0x10t
        0xa3t
        0x9ct
        0x10t
        0xc4t
        0xd7t
        0x10t
        0xe7t
        0xedt
        0x11t
        0xct
        0xeet
        0x11t
        0x33t
        0xect
        0x11t
        0x5ct
        0xfct
        0x11t
        0x88t
        0x34t
        0x11t
        0xb5t
        0xa9t
        0x11t
        0xe5t
        0x76t
        0x12t
        0x17t
        0xb4t
        0x12t
        0x4ct
        0x81t
        0x12t
        0x83t
        0xfdt
        0x12t
        0xbet
        0x46t
        0x12t
        0xfbt
        0x84t
        0x13t
        0x3bt
        0xdbt
        0x13t
        0x7ft
        0x77t
        0x13t
        0xc6t
        0x86t
        0x14t
        0x11t
        0x38t
        0x14t
        0x5ft
        0xc4t
        0x14t
        0xb2t
        0x64t
        0x15t
        0x9t
        0x57t
        0x15t
        0x64t
        0xe5t
        0x15t
        0xc5t
        0x56t
        0x16t
        0x2at
        0xfft
        0x16t
        0x96t
        0x3at
        0x17t
        0x7t
        0x6dt
        0x17t
        0x7ft
        0x2t
        0x17t
        0xfdt
        0x75t
        0x18t
        0x83t
        0x48t
        0x19t
        0x11t
        0x14t
        0x19t
        0xa7t
        0x78t
        0x1at
        0x47t
        0x2et
        0x1at
        0xf1t
        0x3t
        0x1bt
        0xa5t
        0xd9t
        0x1ct
        0x66t
        0xb3t
        0x1dt
        0x34t
        0xb3t
        0x1et
        0x11t
        0x1ft
        0x1et
        0xfdt
        0x6ft
        0x1ft
        0xfbt
        0x4at
        0x21t
        0xct
        0x97t
        0x22t
        0x33t
        0x88t
        0x23t
        0x72t
        0xa5t
        0x24t
        0xcct
        0xe2t
        0x26t
        0x45t
        0xb4t
        0x27t
        0xe1t
        0x2at
        0x29t
        0xa4t
        0x19t
        0x2bt
        0x94t
        0x46t
        0x2dt
        0xb8t
        0xa5t
        0x30t
        0x19t
        0xact
        0x32t
        0xc1t
        0xc1t
        0x35t
        0xbdt
        0xd1t
        0x39t
        0x1et
        0x1ct
        0x3ct
        0xf7t
        0x69t
        0x41t
        0x64t
        0xa0t
        0x46t
        0x89t
        0x52t
        0x4ct
        0x95t
        0x73t
        0x53t
        0xcbt
        0x4ft
        0x5ct
        0x89t
        0x34t
        0x67t
        0x5at
        0xct
    .end array-data
.end method

.method private static getReverseMercatorValues()[I
    .locals 4

    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->reverseMercatorValues:[I

    if-nez v2, :cond_0

    const/16 v2, 0x8d

    new-array v2, v2, [I

    sput-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->reverseMercatorValues:[I

    const/16 v2, 0x1a8

    :try_start_0
    new-array v1, v2, [B

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->createDataInputFromBytes([B)Ljava/io/DataInput;

    move-result-object v2

    sget-object v3, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->reverseMercatorValues:[I

    invoke-static {v2, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->readMercatorValues(Ljava/io/DataInput;[I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->reverseMercatorValues:[I

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "rmercator.dat is incorrect"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :array_0
    .array-data 0x1
        0xfft
        0xe4t
        0x89t
        0xe8t
        0x1bt
        0x76t
        0x18t
        0x1bt
        0x76t
        0x18t
        0x1bt
        0x6ft
        0x2at
        0x1bt
        0x61t
        0x55t
        0x1bt
        0x4ct
        0xaet
        0x1bt
        0x31t
        0x4bt
        0x1bt
        0xft
        0x4ft
        0x1at
        0xe6t
        0xe6t
        0x1at
        0xb8t
        0x3dt
        0x1at
        0x83t
        0x8et
        0x1at
        0x49t
        0x16t
        0x1at
        0x9t
        0x19t
        0x19t
        0xc3t
        0xddt
        0x19t
        0x79t
        0xaft
        0x19t
        0x2at
        0xdet
        0x18t
        0xd7t
        0xbat
        0x18t
        0x80t
        0x99t
        0x18t
        0x25t
        0xcdt
        0x17t
        0xc7t
        0xaet
        0x17t
        0x66t
        0x8dt
        0x17t
        0x2t
        0xc0t
        0x16t
        0x9ct
        0x9bt
        0x16t
        0x34t
        0x6dt
        0x15t
        0xcat
        0x86t
        0x15t
        0x5ft
        0x30t
        0x14t
        0xf2t
        0xb8t
        0x14t
        0x85t
        0x61t
        0x14t
        0x17t
        0x6ft
        0x13t
        0xa9t
        0x21t
        0x13t
        0x3at
        0xb4t
        0x12t
        0xcct
        0x5et
        0x12t
        0x5et
        0x55t
        0x11t
        0xf0t
        0xc8t
        0x11t
        0x83t
        0xe6t
        0x11t
        0x17t
        0xd6t
        0x10t
        0xact
        0xc0t
        0x10t
        0x42t
        0xc3t
        0xft
        0xdat
        0x2t
        0xft
        0x72t
        0x96t
        0xft
        0xct
        0x99t
        0xet
        0xa8t
        0x20t
        0xet
        0x45t
        0x40t
        0xdt
        0xe4t
        0x7t
        0xdt
        0x84t
        0x86t
        0xdt
        0x26t
        0xc6t
        0xct
        0xcat
        0xd3t
        0xct
        0x70t
        0xb5t
        0xct
        0x18t
        0x71t
        0xbt
        0xc2t
        0xat
        0xbt
        0x6dt
        0x87t
        0xbt
        0x1at
        0xe5t
        0xat
        0xcat
        0x28t
        0xat
        0x7bt
        0x4dt
        0xat
        0x2et
        0x52t
        0x9t
        0xe3t
        0x34t
        0x9t
        0x99t
        0xf0t
        0x9t
        0x52t
        0x82t
        0x9t
        0xct
        0xe3t
        0x8t
        0xc9t
        0xet
        0x8t
        0x86t
        0xfet
        0x8t
        0x46t
        0xaat
        0x8t
        0x8t
        0xdt
        0x7t
        0xcbt
        0x1et
        0x7t
        0x8ft
        0xd7t
        0x7t
        0x56t
        0x2dt
        0x7t
        0x1et
        0x1bt
        0x6t
        0xe7t
        0x98t
        0x6t
        0xb2t
        0x9at
        0x6t
        0x7ft
        0x1at
        0x6t
        0x4dt
        0xft
        0x6t
        0x1ct
        0x72t
        0x5t
        0xedt
        0x38t
        0x5t
        0xbft
        0x59t
        0x5t
        0x92t
        0xcet
        0x5t
        0x67t
        0x8et
        0x5t
        0x3dt
        0x91t
        0x5t
        0x14t
        0xcdt
        0x4t
        0xedt
        0x3bt
        0x4t
        0xc6t
        0xd5t
        0x4t
        0xa1t
        0x8ft
        0x4t
        0x7dt
        0x66t
        0x4t
        0x5at
        0x4et
        0x4t
        0x38t
        0x41t
        0x4t
        0x17t
        0x3at
        0x3t
        0xf7t
        0x2ft
        0x3t
        0xd8t
        0x1at
        0x3t
        0xb9t
        0xf3t
        0x3t
        0x9ct
        0xb5t
        0x3t
        0x80t
        0x58t
        0x3t
        0x64t
        0xd7t
        0x3t
        0x4at
        0x2bt
        0x3t
        0x30t
        0x4ct
        0x3t
        0x17t
        0x37t
        0x2t
        0xfet
        0xe4t
        0x2t
        0xe7t
        0x4ft
        0x2t
        0xd0t
        0x72t
        0x2t
        0xbat
        0x46t
        0x2t
        0xa4t
        0xc8t
        0x2t
        0x8ft
        0xf1t
        0x2t
        0x7bt
        0xbdt
        0x2t
        0x68t
        0x28t
        0x2t
        0x55t
        0x2bt
        0x2t
        0x42t
        0xc3t
        0x2t
        0x30t
        0xect
        0x2t
        0x1ft
        0xa0t
        0x2t
        0xet
        0xddt
        0x1t
        0xfet
        0x9ct
        0x1t
        0xeet
        0xdct
        0x1t
        0xdft
        0x96t
        0x1t
        0xd0t
        0xcbt
        0x1t
        0xc2t
        0x72t
        0x1t
        0xb4t
        0x8at
        0x1t
        0xa7t
        0x11t
        0x1t
        0x9at
        0x1t
        0x1t
        0x8dt
        0x58t
        0x1t
        0x81t
        0x12t
        0x1t
        0x75t
        0x2ft
        0x1t
        0x69t
        0xa7t
        0x1t
        0x5et
        0x7ct
        0x1t
        0x53t
        0xa8t
        0x1t
        0x49t
        0x2at
        0x1t
        0x3et
        0xfft
        0x1t
        0x35t
        0x23t
        0x1t
        0x2bt
        0x97t
        0x1t
        0x22t
        0x54t
        0x1t
        0x19t
        0x5bt
        0x1t
        0x10t
        0xaat
        0x1t
        0x8t
        0x3ct
        0x1t
        0x0t
        0x11t
        0x0t
        0xf8t
        0x28t
        0x0t
        0xf0t
        0x7ct
        0x0t
        0xe9t
        0xdt
        0x0t
        0xe1t
        0xd8t
        0x0t
        0xdat
        0xdet
        0x0t
        0xd4t
        0x19t
        0x0t
        0xcdt
        0x8bt
        0x0t
        0xc7t
        0x30t
        0x0t
        0xc1t
        0x8t
        0x0t
        0xbbt
        0x10t
        0x0t
        0xb5t
        0x47t
    .end array-data
.end method

.method public static getXPixelFromLon(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 6

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    int-to-long v2, p0

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x15752a00

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getYPixelFromLat(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 16

    invoke-static/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getMercatorIndex(I)I

    move-result v5

    invoke-static/range {p0 .. p0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const v11, 0xf4240

    rem-int v6, v10, v11

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getMercatorValues()[I

    move-result-object v9

    add-int/lit8 v10, v5, -0x1

    aget v10, v9, v10

    mul-int/lit8 v10, v10, -0x1

    aget v11, v9, v5

    mul-int/lit8 v11, v11, 0x3

    add-int/2addr v10, v11

    add-int/lit8 v11, v5, 0x1

    aget v11, v9, v11

    mul-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    add-int/lit8 v11, v5, 0x2

    aget v11, v9, v11

    add-int/2addr v10, v11

    div-int/lit8 v1, v10, 0x6

    add-int/lit8 v10, v5, -0x1

    aget v10, v9, v10

    mul-int/lit8 v10, v10, 0x3

    aget v11, v9, v5

    mul-int/lit8 v11, v11, 0x6

    sub-int/2addr v10, v11

    add-int/lit8 v11, v5, 0x1

    aget v11, v9, v11

    mul-int/lit8 v11, v11, 0x3

    add-int/2addr v10, v11

    div-int/lit8 v2, v10, 0x6

    add-int/lit8 v10, v5, -0x1

    aget v10, v9, v10

    mul-int/lit8 v10, v10, -0x2

    aget v11, v9, v5

    mul-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    add-int/lit8 v11, v5, 0x1

    aget v11, v9, v11

    mul-int/lit8 v11, v11, 0x6

    add-int/2addr v10, v11

    add-int/lit8 v11, v5, 0x2

    aget v11, v9, v11

    sub-int/2addr v10, v11

    div-int/lit8 v3, v10, 0x6

    aget v4, v9, v5

    int-to-long v10, v1

    int-to-long v12, v6

    mul-long/2addr v10, v12

    int-to-long v12, v6

    mul-long/2addr v10, v12

    const-wide/32 v12, 0xf4240

    div-long/2addr v10, v12

    int-to-long v12, v6

    mul-long/2addr v10, v12

    const-wide/32 v12, 0xf4240

    div-long/2addr v10, v12

    const-wide/32 v12, 0xf4240

    div-long/2addr v10, v12

    int-to-long v12, v2

    int-to-long v14, v6

    mul-long/2addr v12, v14

    int-to-long v14, v6

    mul-long/2addr v12, v14

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    int-to-long v12, v3

    int-to-long v14, v6

    mul-long/2addr v12, v14

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    int-to-long v12, v4

    add-long/2addr v10, v12

    long-to-int v7, v10

    if-gez p0, :cond_0

    neg-int v7, v7

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v10

    int-to-long v10, v10

    const-wide/16 v12, 0x2

    div-long/2addr v10, v12

    move-object/from16 v0, p1

    invoke-static {v7, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->mercatorToPixelsTimesTen(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v12

    div-int/lit8 v12, v12, 0xa

    int-to-long v12, v12

    sub-long/2addr v10, v12

    long-to-int v8, v10

    return v8
.end method

.method public static latLonToString(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->e6ToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->e6ToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static mercatorToPixelsTimesTen(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 4

    int-to-long v0, p0

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x15752a00

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static pixelsToMercator(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static readMercatorValues(Ljava/io/DataInput;[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    aput v2, p1, v1

    const/4 v0, 0x1

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget v1, p1, v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    or-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static readPoint(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;-><init>(II)V

    return-object v0
.end method

.method public static writePoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->writePoint(Ljava/io/DataOutput;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0
.end method

.method private writePoint(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public distanceSquared(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)J
    .locals 8

    const-wide/16 v6, 0x64

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    iget v1, p1, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    iget v3, p1, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v0, v2

    div-long/2addr v0, v6

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    iget v3, p1, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    iget v5, p1, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    iget v4, v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    iget v4, v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    if-eq v3, v4, :cond_3

    :cond_2
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    iget v4, v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    iget v4, v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    if-ne v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getDefiningPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .locals 0

    return-object p0
.end method

.method public getLatitude()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    return v0
.end method

.method public getLongitude()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    return v0
.end method

.method public getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 3

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    move-result v0

    return v0
.end method

.method public getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 3

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    mul-int/lit8 v1, v0, 0x1d

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    add-int v0, v1, v2

    return v0
.end method

.method public pixelDistanceSquared(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)J
    .locals 8

    invoke-virtual {p1, p2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v2

    invoke-virtual {p0, p2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v3

    sub-int v0, v2, v3

    invoke-virtual {p1, p2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v2

    invoke-virtual {p0, p2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v3

    sub-int v1, v2, v3

    int-to-long v2, v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    int-to-long v4, v1

    int-to-long v6, v1

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .locals 10

    const/16 v3, 0x16

    invoke-virtual {p3, p1, v3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    move-result v0

    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    add-int v1, v0, v6

    invoke-virtual {p3, p2, v3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    move-result v0

    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    add-int v2, v0, v6

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    if-eqz p2, :cond_0

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-static {v2, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitudeFromY(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v4

    :cond_0
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    if-eqz p1, :cond_1

    int-to-long v6, p1

    const-wide/32 v8, 0x15752a00

    mul-long/2addr v6, v8

    invoke-virtual {p3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v0

    int-to-long v8, v0

    div-long/2addr v6, v8

    long-to-int v0, v6

    add-int/2addr v5, v0

    :cond_1
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;-><init>(IIIII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latLonToString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
