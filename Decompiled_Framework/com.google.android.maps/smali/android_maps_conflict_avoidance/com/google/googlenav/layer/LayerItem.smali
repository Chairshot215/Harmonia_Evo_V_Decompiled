.class public Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;
.super Ljava/lang/Object;
.source "LayerItem.java"


# instance fields
.field private final activitySnippet:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

.field private final isRoutable:Z

.field private final itemId:Ljava/lang/String;

.field private final layerId:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final ranking:I

.field private final rating:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

.field private final snippet:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->layerId:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->itemId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->snippet:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    :goto_2
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->isRoutable:Z

    invoke-virtual {p1, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->rating:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    :cond_0
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->ranking:I

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->activitySnippet:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    return-void

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method public getBuzzSnippet()Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->activitySnippet:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getLayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->layerId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->snippet:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->layerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", snippet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->snippet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
