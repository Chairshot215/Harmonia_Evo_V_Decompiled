.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;
.super Ljava/lang/Object;
.source "NullMapTileStorage.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;


# instance fields
.field private textSize:I

.field private tileEdition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->tileEdition:I

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->textSize:I

    return-void
.end method


# virtual methods
.method public close(Z)V
    .locals 0

    return-void
.end method

.method public getMapTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public mapChanged()V
    .locals 0

    return-void
.end method

.method public setTileEditionAndTextSize(II)Z
    .locals 3

    const/4 v2, -0x1

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->tileEdition:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->tileEdition:I

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->textSize:I

    if-eq p2, v1, :cond_2

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->textSize:I

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->tileEdition:I

    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->textSize:I

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeCache()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
