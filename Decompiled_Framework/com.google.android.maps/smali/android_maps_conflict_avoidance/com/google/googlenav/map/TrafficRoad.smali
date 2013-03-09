.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
.super Ljava/lang/Object;
.source "TrafficRoad.java"


# instance fields
.field private final roadContent:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    return-void
.end method

.method private static readShortFrom([BI)I
    .locals 2

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static readTrafficRoad(Ljava/io/DataInput;II)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    add-int/lit8 v7, p1, -0x2

    invoke-interface {p0, v7}, Ljava/io/DataInput;->skipBytes(I)I

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    mul-int/lit8 v7, v3, 0x5

    add-int/lit8 v7, v7, 0x2

    new-array v4, v7, [B

    const/4 v1, 0x0

    add-int/lit8 v2, v1, 0x1

    int-to-byte v7, v6

    aput-byte v7, v4, v1

    add-int/lit8 v1, v2, 0x1

    int-to-byte v7, v5

    aput-byte v7, v4, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v7

    invoke-static {v7, v4, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->writeShortTo(I[BI)I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v7

    invoke-static {v7, v4, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->writeShortTo(I[BI)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v4, v1

    add-int/lit8 v7, p2, -0x5

    invoke-interface {p0, v7}, Ljava/io/DataInput;->skipBytes(I)I

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    new-instance v7, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    invoke-direct {v7, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;-><init>([B)V

    return-object v7
.end method

.method private static writeShortTo(I[BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return p2
.end method


# virtual methods
.method public getNumPoints()I
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public getSpeedCategory(I)I
    .locals 2

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x6

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getTrafficLineBackgroundWidth()I
    .locals 2

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getTrafficLineWidth()I
    .locals 2

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getXOffset(I)I
    .locals 2

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->readShortFrom([BI)I

    move-result v0

    return v0
.end method

.method public getYOffset(I)I
    .locals 2

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->readShortFrom([BI)I

    move-result v0

    return v0
.end method
