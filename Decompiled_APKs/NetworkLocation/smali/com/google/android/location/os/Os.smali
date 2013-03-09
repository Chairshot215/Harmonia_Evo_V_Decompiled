.class public interface abstract Lcom/google/android/location/os/Os;
.super Ljava/lang/Object;
.source "Os.java"


# virtual methods
.method public abstract alarmReset(IJ)V
.end method

.method public abstract bootTime()J
.end method

.method public abstract cellRequestScan()V
.end method

.method public abstract getLastKnownLocation()Lcom/google/android/location/os/LocationInterface;
.end method

.method public abstract glsQuery(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)V
.end method

.method public abstract locationReport(Lcom/google/android/location/data/NetworkLocation;)V
.end method

.method public abstract millisSinceBoot()J
.end method

.method public abstract millisSinceEpoch()J
.end method

.method public abstract openMetricModelRawResource()Ljava/io/InputStream;
.end method

.method public abstract registerCallbacks(Lcom/google/android/location/os/Callbacks;)V
.end method

.method public abstract stateCheckpoint(Lcom/google/android/location/cache/PersistentState;)V
.end method

.method public abstract wakeLockAcquire(I)V
.end method

.method public abstract wakeLockRelease(I)V
.end method

.method public abstract wifiRequestScan()V
.end method
