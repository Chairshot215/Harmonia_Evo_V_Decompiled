.class public abstract Lcom/google/android/apps/uploader/googlemobile/common/util/Observable;
.super Ljava/lang/Object;


# instance fields
.field private observers:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/util/Observable;->observers:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/google/android/apps/uploader/googlemobile/common/util/Observer;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/util/Observable;->observers:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/util/Observable;->observers:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/util/Observable;->observers:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getObservers()[Lcom/google/android/apps/uploader/googlemobile/common/util/Observer;
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/util/Observable;->observers:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/util/Observable;->observers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/uploader/googlemobile/common/util/Observer;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/util/Observable;->observers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyObservers()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public notifyObservers(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/util/Observable;->getObservers()[Lcom/google/android/apps/uploader/googlemobile/common/util/Observer;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-interface {v2, p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/util/Observer;->update(Lcom/google/android/apps/uploader/googlemobile/common/util/Observable;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAllObservers()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/util/Observable;->observers:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/util/Observable;->observers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeObserver(Lcom/google/android/apps/uploader/googlemobile/common/util/Observer;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/util/Observable;->observers:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/util/Observable;->observers:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
