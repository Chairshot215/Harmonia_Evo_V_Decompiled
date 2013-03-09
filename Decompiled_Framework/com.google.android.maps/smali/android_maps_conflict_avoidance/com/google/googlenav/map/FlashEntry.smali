.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
.super Ljava/lang/Object;
.source "FlashEntry.java"


# static fields
.field static SIZE_IN_CATALOG:I


# instance fields
.field private final dataSize:I

.field private flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

.field private final tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private time:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    sput v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->SIZE_IN_CATALOG:I

    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V
    .locals 4

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v0

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLastAccessTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getDataSize()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;JI)V

    return-void
.end method

.method private constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;JI)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {p0, p2, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->setLastAccessTime(J)V

    iput p4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->dataSize:I

    return-void
.end method

.method public static readFromCatalog(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->read(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v1

    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    int-to-long v4, v2

    invoke-direct {v3, v1, v4, v5, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;JI)V

    return-object v3
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
    instance-of v3, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->dataSize:I

    iget v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->dataSize:I

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    if-nez v3, :cond_4

    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getByteSize()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->dataSize:I

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getFlashRecord()Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    return-object v0
.end method

.method public getLastAccessTime()J
    .locals 4

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->time:I

    int-to-long v0, v0

    const-wide/32 v2, 0x424b1f68

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTile()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v1, v0, 0x1d

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->dataSize:I

    add-int v0, v1, v2

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFlashRecord(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)V
    .locals 2

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FlashRecord already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    return-void
.end method

.method public setLastAccessTime(J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    const-wide/32 v2, 0x424b1f68

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->time:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getByteSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToCatalog(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->time:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->dataSize:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->write(Ljava/io/DataOutput;)V

    return-void
.end method
