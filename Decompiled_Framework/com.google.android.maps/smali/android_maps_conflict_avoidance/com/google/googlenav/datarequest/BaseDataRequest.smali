.class public abstract Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;
.super Ljava/lang/Object;
.source "BaseDataRequest.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;


# instance fields
.field private volatile isCancelled:Z

.field private serverFailureCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;->isCancelled:Z

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;->serverFailureCount:I

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;->isCancelled:Z

    return v0
.end method

.method public isForeground()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isImmediate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSubmission()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onServerFailure()V
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;->serverFailureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;->serverFailureCount:I

    return-void
.end method

.method public retryOnFailure()Z
    .locals 2

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;->serverFailureCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
