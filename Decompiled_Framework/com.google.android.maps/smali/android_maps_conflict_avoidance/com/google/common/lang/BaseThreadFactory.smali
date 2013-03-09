.class public Landroid_maps_conflict_avoidance/com/google/common/lang/BaseThreadFactory;
.super Ljava/lang/Object;
.source "BaseThreadFactory.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;


# instance fields
.field private created:I

.field private running:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/lang/BaseThreadFactory;->created:I

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/lang/BaseThreadFactory;->running:I

    return-void
.end method
