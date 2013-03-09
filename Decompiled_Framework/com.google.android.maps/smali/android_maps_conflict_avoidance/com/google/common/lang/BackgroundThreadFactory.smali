.class public Landroid_maps_conflict_avoidance/com/google/common/lang/BackgroundThreadFactory;
.super Ljava/lang/Object;
.source "BackgroundThreadFactory.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;


# instance fields
.field private final threadFactory:Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/lang/BackgroundThreadFactory;->threadFactory:Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;

    return-void
.end method
