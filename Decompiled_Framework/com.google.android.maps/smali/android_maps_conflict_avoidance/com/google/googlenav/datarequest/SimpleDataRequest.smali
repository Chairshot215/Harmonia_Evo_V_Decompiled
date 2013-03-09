.class public Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;
.source "SimpleDataRequest.java"


# instance fields
.field private final data:[B

.field private final foreground:Z

.field private final immediate:Z

.field private received:Z

.field private final requestType:I

.field private sent:Z

.field private final waitObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I[BZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;-><init>(I[BZZLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(I[BZZLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;-><init>()V

    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->requestType:I

    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->data:[B

    iput-boolean p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->immediate:Z

    iput-boolean p4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->foreground:Z

    iput-object p5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getRequestType()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->requestType:I

    return v0
.end method

.method public isForeground()Z
    .locals 1

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->foreground:Z

    return v0
.end method

.method public isImmediate()Z
    .locals 1

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->immediate:Z

    return v0
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->received:Z

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :cond_0
    return v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeRequestData(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->data:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->sent:Z

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
