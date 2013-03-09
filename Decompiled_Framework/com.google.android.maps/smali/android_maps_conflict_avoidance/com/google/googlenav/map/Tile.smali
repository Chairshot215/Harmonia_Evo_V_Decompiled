.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
.super Ljava/lang/Object;
.source "Tile.java"


# static fields
.field private static final CACHE_SIZES:[I

.field private static tileObjectCache:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private static tileObjectCacheSize:I


# instance fields
.field private final flags:B

.field private final hashCode:I

.field private final xIndex:I

.field private final yIndex:I

.field private final zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->CACHE_SIZES:[I

    const/4 v0, 0x1

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->initializeTileObjectCache(I)V

    return-void

    :array_0
    .array-data 0x4
        0x83t 0x0t 0x0t 0x0t
        0x1t 0x1t 0x0t 0x0t
        0x9t 0x2t 0x0t 0x0t
        0x7t 0x4t 0x0t 0x0t
        0x5t 0x8t 0x0t 0x0t
        0x3t 0x10t 0x0t 0x0t
        0x11t 0x20t 0x0t 0x0t
        0x1bt 0x40t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;I)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zoom cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-byte p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    iput p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    iput-object p4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    iput p5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->hashCode:I

    return-void
.end method

.method private static calculateHashCode(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;I)I
    .locals 2

    mul-int/lit8 v0, p0, 0x1d

    xor-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x1d

    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v1

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p3

    return v0
.end method

.method private static getCacheSizeFromMinCacheSize(I)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->CACHE_SIZES:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->CACHE_SIZES:[I

    aget v1, v2, v0

    if-lt v1, p0, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->CACHE_SIZES:[I

    sget-object v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->CACHE_SIZES:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3

    goto :goto_1
.end method

.method public static getSatType()B
    .locals 1

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->isChinaVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 8

    invoke-virtual {p3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v1

    div-int/lit16 v1, v1, 0x100

    rem-int/2addr p1, v1

    if-gez p1, :cond_0

    invoke-virtual {p3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v1

    div-int/lit16 v1, v1, 0x100

    add-int/2addr p1, v1

    :cond_0
    invoke-static {p1, p2, p3, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->calculateHashCode(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;I)I

    move-result v5

    sget v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCacheSize:I

    rem-int v6, v5, v1

    if-gez v6, :cond_1

    sget v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCacheSize:I

    add-int/2addr v6, v1

    :cond_1
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCache:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    aget-object v0, v1, v6

    if-eqz v0, :cond_2

    iget-byte v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    if-ne v1, p0, :cond_2

    iget v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    if-ne v1, p1, :cond_2

    iget v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    if-ne v1, p2, :cond_2

    iget-object v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    if-ne v1, p3, :cond_2

    move-object v7, v0

    :goto_0
    return-object v7

    :cond_2
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;-><init>(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;I)V

    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCache:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    aput-object v0, v1, v6

    move-object v7, v0

    goto :goto_0
.end method

.method public static getTile(BLandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 3

    iget v0, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    iget v1, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    iget-object v2, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-static {p0, v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v0

    return-object v0
.end method

.method public static getTile(BLandroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 2

    invoke-static {p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXTileIndex(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v0

    invoke-static {p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYTileIndex(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v1

    invoke-static {p0, v0, v1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v0

    return-object v0
.end method

.method public static getXTileIndex(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v0

    div-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public static getYTileIndex(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v0

    div-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public static initializeTileObjectCache(I)V
    .locals 2

    mul-int/lit8 v0, p0, 0x6

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getCacheSizeFromMinCacheSize(I)I

    move-result v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCacheSize:I

    sget v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCacheSize:I

    new-array v1, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    sput-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCache:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    return-void
.end method

.method public static read(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    iget v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    iget v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    if-ne v3, v4, :cond_3

    iget-byte v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    iget-byte v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getFlags()B
    .locals 1

    iget-byte v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    return v0
.end method

.method public getXIndex()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    return v0
.end method

.method public getXPixelTopLeft()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    mul-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public getYIndex()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    return v0
.end method

.method public getYPixelTopLeft()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    mul-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    return-object v0
.end method

.method public getZoomParent()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 7

    const/4 v0, 0x0

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    if-gez v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    :cond_0
    if-gez v3, :cond_1

    add-int/lit8 v3, v3, -0x1

    :cond_1
    iget-byte v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    div-int/lit8 v5, v2, 0x2

    div-int/lit8 v6, v3, 0x2

    invoke-static {v4, v5, v6, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->hashCode:I

    return v0
.end method

.method public notValid()Z
    .locals 2

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v1

    div-int/lit16 v1, v1, 0x100

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTraffic()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BLandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
