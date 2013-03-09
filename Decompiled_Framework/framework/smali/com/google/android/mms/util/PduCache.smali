.class public final Lcom/google/android/mms/util/PduCache;
.super Lcom/google/android/mms/util/AbstractCache;
.source "PduCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/mms/util/AbstractCache",
        "<",
        "Ljava/lang/Long;",
        "Lcom/google/android/mms/pdu/GenericPdu;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x32

.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "PduCache"

.field private static sInstance:Lcom/google/android/mms/util/PduCache; = null

.field private static final serialVersionUID:J = -0x40c866a6eee1824cL


# direct methods
.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/google/android/mms/util/AbstractCache;-><init>(I)V

    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/google/android/mms/util/PduCache;
    .locals 2

    const-class v1, Lcom/google/android/mms/util/PduCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/mms/util/PduCache;->sInstance:Lcom/google/android/mms/util/PduCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/mms/util/PduCache;

    invoke-direct {v0}, Lcom/google/android/mms/util/PduCache;-><init>()V

    sput-object v0, Lcom/google/android/mms/util/PduCache;->sInstance:Lcom/google/android/mms/util/PduCache;

    :cond_0
    sget-object v0, Lcom/google/android/mms/util/PduCache;->sInstance:Lcom/google/android/mms/util/PduCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method
