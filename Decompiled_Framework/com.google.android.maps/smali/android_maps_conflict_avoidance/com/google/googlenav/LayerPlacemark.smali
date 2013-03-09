.class public Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;
.source "LayerPlacemark.java"


# instance fields
.field private activeIconIndex:I

.field private authorGaiaId:J

.field private authorName:Ljava/lang/String;

.field private clusterDocId:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private distanceSquaredToTarget:J

.field private height:I

.field private final itemId:Ljava/lang/String;

.field private final layerId:Ljava/lang/String;

.field private locationName:Ljava/lang/String;

.field private mediaUrls:Ljava/util/Vector;

.field private needToFetchDetails:Z

.field private nextRefreshTime:J

.field private normalIconIndex:I

.field private numberComments:I

.field private shadowIconIndex:I

.field private snippet:Ljava/lang/String;

.field private timestamp:J

.field private width:I


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v4

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;-><init>(Landroid_maps_conflict_avoidance/com/google/map/Geometry;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->needToFetchDetails:Z

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getLayerId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->layerId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getItemId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->itemId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getSnippet()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->snippet:Ljava/lang/String;

    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getIconIndex()I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->activeIconIndex:I

    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getIconInactiveIndex()I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->normalIconIndex:I

    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getIconShadowIndex()I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->shadowIconIndex:I

    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getWidth()I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->width:I

    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getHeight()I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->height:I

    iput-boolean v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->needToFetchDetails:Z

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->nextRefreshTime:J

    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->distanceSquaredToTarget:J

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getBuzzSnippet()Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getSubProtoOrNull(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v4, 0x4

    invoke-static {v1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->authorName:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoLongValueOrZero(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)J

    move-result-wide v4

    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->authorGaiaId:J

    :cond_0
    const/4 v4, 0x5

    invoke-static {v0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoLongValueOrZero(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)J

    move-result-wide v4

    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->timestamp:J

    const/4 v4, 0x6

    invoke-static {v0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrZero(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->numberComments:I

    const/4 v4, 0x7

    invoke-static {v0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->clusterDocId:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->content:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-static {v0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->locationName:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-static {v0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrFalse(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->mediaUrls:Ljava/util/Vector;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->mediaUrls:Ljava/util/Vector;

    invoke-virtual {v0, v7, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
