.class public abstract Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;
.super Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Block;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;
    }
.end annotation


# instance fields
.field protected listener:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;

.field protected retryCount:I

.field protected retryTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Block;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->retryTimeout:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->retryCount:I

    return-void
.end method


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized getListener()Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->listener:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRetryTimeout()J
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->retryTimeout:J

    iget-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->retryTimeout:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->retryTimeout:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getStreamLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized setListener(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->listener:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRetryCount(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->retryCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRetryTimeout(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->retryTimeout:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldRetry()Z
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->retryCount:I

    sub-int v1, v0, v2

    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->retryCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    move v0, v2

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
