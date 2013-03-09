.class public interface abstract Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
.super Ljava/lang/Object;
.source "DataRequest.java"


# virtual methods
.method public abstract getRequestType()I
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract isForeground()Z
.end method

.method public abstract isImmediate()Z
.end method

.method public abstract isSubmission()Z
.end method

.method public abstract onServerFailure()V
.end method

.method public abstract readResponseData(Ljava/io/DataInput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract retryOnFailure()Z
.end method

.method public abstract writeRequestData(Ljava/io/DataOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
