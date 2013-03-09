.class public Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;
.super Ljava/lang/Object;
.source "ClickableArea.java"


# instance fields
.field private final centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

.field private final height:I

.field private final iconInactiveIndex:I

.field private final iconIndex:I

.field private final iconShadowIndex:I

.field private items:[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;

.field private final type:I

.field private final width:I


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
    .locals 8

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->type:I

    invoke-virtual {p1, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    const/16 v4, 0x1f

    invoke-virtual {v1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getMapPointFromXY(III)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v4

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    const/16 v4, 0x20

    invoke-static {v1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrZero(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->width:I

    const/16 v4, 0x21

    invoke-static {v1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrZero(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->height:I

    const/16 v4, 0x22

    invoke-static {v1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrNegativeOne(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->iconIndex:I

    const/16 v4, 0x23

    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->iconIndex:I

    invoke-static {v1, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrDefault(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;II)I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->iconInactiveIndex:I

    const/16 v4, 0x24

    invoke-static {v1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrNegativeOne(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->iconShadowIndex:I

    invoke-virtual {p1, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    new-array v4, v3, [Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->items:[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->items:[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;

    new-instance v5, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;

    invoke-virtual {p1, v7, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->height:I

    return v0
.end method

.method public getIconInactiveIndex()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->iconInactiveIndex:I

    return v0
.end method

.method public getIconIndex()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->iconIndex:I

    return v0
.end method

.method public getIconShadowIndex()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->iconShadowIndex:I

    return v0
.end method

.method public getItems()[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->items:[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->width:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CenterPoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->items:[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
