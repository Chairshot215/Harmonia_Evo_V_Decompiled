.class public Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;
.super Ljava/lang/Object;
.source "FileClientSessionCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;,
        Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;
    }
.end annotation


# static fields
.field public static final MAX_SIZE:I = 0xc

.field static final caches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->caches:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized reset()V
    .locals 2

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->caches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized usingDirectory(Ljava/io/File;)Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->caches:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;-><init>(Ljava/io/File;)V

    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->caches:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
