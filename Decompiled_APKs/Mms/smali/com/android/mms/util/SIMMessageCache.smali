.class public Lcom/android/mms/util/SIMMessageCache;
.super Lcom/google/android/mms/util/AbstractCache;
.source "SIMMessageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/mms/util/AbstractCache",
        "<",
        "Ljava/lang/Long;",
        "Lcom/android/mms/msg/AbstractMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x32

.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "MessageCache"

.field private static sInstance:Lcom/android/mms/util/SIMMessageCache; = null

.field private static final serialVersionUID:J = -0x3316526d7851d370L


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/google/android/mms/util/AbstractCache;-><init>(I)V

    .line 44
    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/android/mms/util/SIMMessageCache;
    .locals 2

    .prologue
    .line 47
    const-class v1, Lcom/android/mms/util/SIMMessageCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/util/SIMMessageCache;->sInstance:Lcom/android/mms/util/SIMMessageCache;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/android/mms/util/SIMMessageCache;

    invoke-direct {v0}, Lcom/android/mms/util/SIMMessageCache;-><init>()V

    sput-object v0, Lcom/android/mms/util/SIMMessageCache;->sInstance:Lcom/android/mms/util/SIMMessageCache;

    .line 53
    :cond_0
    sget-object v0, Lcom/android/mms/util/SIMMessageCache;->sInstance:Lcom/android/mms/util/SIMMessageCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
