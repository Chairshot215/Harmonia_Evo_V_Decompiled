.class public interface abstract Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;
.super Ljava/lang/Object;
.source "LayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TileUpdateObserver"
.end annotation


# virtual methods
.method public abstract getLayerInfo()Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;
.end method

.method public abstract setLayerTilesDirty()V
.end method

.method public abstract updateLayerInfo(Ljava/lang/String;[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
.end method
