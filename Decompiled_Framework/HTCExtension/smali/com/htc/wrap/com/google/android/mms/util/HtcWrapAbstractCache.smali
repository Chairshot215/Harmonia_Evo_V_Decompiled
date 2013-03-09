.class public abstract Lcom/htc/wrap/com/google/android/mms/util/HtcWrapAbstractCache;
.super Lcom/google/android/mms/util/AbstractCache;
.source "HtcWrapAbstractCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/mms/util/AbstractCache",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5651925f887dda59L


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/mms/util/AbstractCache;-><init>()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/mms/util/AbstractCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getCachedItemCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/google/android/mms/util/AbstractCache;->getCachedItemCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCastInstance()Ljava/util/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public declared-synchronized invalidate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/google/android/mms/util/AbstractCache;->invalidate(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidateAll()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/google/android/mms/util/AbstractCache;->invalidateAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/mms/util/AbstractCache;->removeEldestEntry(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method
