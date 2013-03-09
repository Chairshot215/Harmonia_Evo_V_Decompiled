.class public Lcom/android/mms/util/SendingProgressTokenManager;
.super Ljava/lang/Object;
.source "SendingProgressTokenManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field public static final NO_TOKEN:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "SendingProgressTokenManager"

.field private static final TOKEN_POOL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/util/SendingProgressTokenManager;->TOKEN_POOL:Ljava/util/HashMap;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized get(Ljava/lang/Object;)J
    .locals 4
    .parameter "key"

    .prologue
    .line 38
    const-class v3, Lcom/android/mms/util/SendingProgressTokenManager;

    monitor-enter v3

    :try_start_0
    sget-object v1, Lcom/android/mms/util/SendingProgressTokenManager;->TOKEN_POOL:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 42
    .local v0, token:Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    :goto_0
    monitor-exit v3

    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 38
    .end local v0           #token:Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method public static declared-synchronized put(Ljava/lang/Object;J)V
    .locals 3
    .parameter "key"
    .parameter "token"

    .prologue
    .line 49
    const-class v1, Lcom/android/mms/util/SendingProgressTokenManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/util/SendingProgressTokenManager;->TOKEN_POOL:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v1

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized remove(Ljava/lang/Object;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 56
    const-class v1, Lcom/android/mms/util/SendingProgressTokenManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/util/SendingProgressTokenManager;->TOKEN_POOL:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit v1

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
