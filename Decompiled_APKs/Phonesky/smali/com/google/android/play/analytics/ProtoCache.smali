.class Lcom/google/android/play/analytics/ProtoCache;
.super Ljava/lang/Object;
.source "ProtoCache.java"


# static fields
.field private static mEventCache:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static mKeyValueCache:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProtoComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/play/analytics/ProtoCache$1;

    invoke-direct {v0}, Lcom/google/android/play/analytics/ProtoCache$1;-><init>()V

    sput-object v0, Lcom/google/android/play/analytics/ProtoCache;->sProtoComparator:Ljava/util/Comparator;

    .line 38
    sget-object v0, Lcom/google/android/play/analytics/ProtoCache;->sProtoComparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newTreeSet(Ljava/util/Comparator;)Ljava/util/TreeSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/play/analytics/ProtoCache;->mEventCache:Ljava/util/TreeSet;

    .line 39
    sget-object v0, Lcom/google/android/play/analytics/ProtoCache;->sProtoComparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newTreeSet(Ljava/util/Comparator;)Ljava/util/TreeSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/play/analytics/ProtoCache;->mKeyValueCache:Ljava/util/TreeSet;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtainEvent()Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    .locals 3

    .prologue
    .line 42
    sget-object v2, Lcom/google/android/play/analytics/ProtoCache;->mEventCache:Ljava/util/TreeSet;

    monitor-enter v2

    .line 43
    :try_start_0
    sget-object v1, Lcom/google/android/play/analytics/ProtoCache;->mEventCache:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    sget-object v1, Lcom/google/android/play/analytics/ProtoCache;->mEventCache:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;

    .line 45
    .local v0, event:Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    sget-object v1, Lcom/google/android/play/analytics/ProtoCache;->mEventCache:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 46
    monitor-exit v2

    .line 52
    :goto_0
    return-object v0

    .line 48
    .end local v0           #event:Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    new-instance v0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;

    invoke-direct {v0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;-><init>()V

    .line 52
    .restart local v0       #event:Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static obtainKeyValue()Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;
    .locals 3

    .prologue
    .line 76
    sget-object v2, Lcom/google/android/play/analytics/ProtoCache;->mKeyValueCache:Ljava/util/TreeSet;

    monitor-enter v2

    .line 77
    :try_start_0
    sget-object v1, Lcom/google/android/play/analytics/ProtoCache;->mKeyValueCache:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    sget-object v1, Lcom/google/android/play/analytics/ProtoCache;->mKeyValueCache:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;

    .line 79
    .local v0, keyValue:Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;
    sget-object v1, Lcom/google/android/play/analytics/ProtoCache;->mKeyValueCache:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 80
    monitor-exit v2

    .line 84
    .end local v0           #keyValue:Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;
    :goto_0
    return-object v0

    .line 82
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    new-instance v0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;

    invoke-direct {v0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;-><init>()V

    goto :goto_0

    .line 82
    .restart local v0       #keyValue:Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static recycle(Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->getValuesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;

    .line 64
    .local v1, keyvalue:Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;
    invoke-static {v1}, Lcom/google/android/play/analytics/ProtoCache;->recycle(Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;)V

    goto :goto_0

    .line 66
    .end local v1           #keyvalue:Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->clear()Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;

    .line 68
    sget-object v3, Lcom/google/android/play/analytics/ProtoCache;->mEventCache:Ljava/util/TreeSet;

    monitor-enter v3

    .line 69
    :try_start_0
    sget-object v2, Lcom/google/android/play/analytics/ProtoCache;->mEventCache:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/16 v4, 0xa

    if-ge v2, v4, :cond_1

    .line 70
    sget-object v2, Lcom/google/android/play/analytics/ProtoCache;->mEventCache:Ljava/util/TreeSet;

    invoke-virtual {v2, p0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_1
    monitor-exit v3

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static recycle(Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;->clear()Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;

    .line 90
    sget-object v1, Lcom/google/android/play/analytics/ProtoCache;->mKeyValueCache:Ljava/util/TreeSet;

    monitor-enter v1

    .line 91
    :try_start_0
    sget-object v0, Lcom/google/android/play/analytics/ProtoCache;->mKeyValueCache:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    .line 92
    sget-object v0, Lcom/google/android/play/analytics/ProtoCache;->mKeyValueCache:Ljava/util/TreeSet;

    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    monitor-exit v1

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static recycleLogRequest(Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->getClickEventList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;

    .line 99
    .local v0, event:Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    invoke-static {v0}, Lcom/google/android/play/analytics/ProtoCache;->recycle(Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;)V

    goto :goto_0

    .line 101
    .end local v0           #event:Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    :cond_0
    return-void
.end method
