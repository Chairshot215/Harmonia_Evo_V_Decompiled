.class public Lcom/htc/Weather/util/HtcStorageChecker;
.super Ljava/util/TimerTask;
.source "HtcStorageChecker.java"


# static fields
.field public static final INTERNAL_MEMORY_THRESOLD:J = 0x100000L

.field private static final PATH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HtcStorageCheckTimer"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/Weather/util/HtcStorageChecker;->PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/htc/Weather/util/HtcStorageChecker;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private static declared-synchronized checkIternalMemory()J
    .locals 9

    .prologue
    .line 38
    const-class v8, Lcom/htc/Weather/util/HtcStorageChecker;

    monitor-enter v8

    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    sget-object v7, Lcom/htc/Weather/util/HtcStorageChecker;->PATH:Ljava/lang/String;

    invoke-direct {v4, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 39
    .local v4, fileStats:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 40
    .local v0, availableBlocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    int-to-long v2, v7

    .line 41
    .local v2, blockSize:J
    mul-long v5, v0, v2

    .line 43
    .local v5, size:J
    monitor-exit v8

    return-wide v5

    .line 38
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #size:J
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static declared-synchronized isInternalStorageEnough()Z
    .locals 6

    .prologue
    .line 47
    const-class v3, Lcom/htc/Weather/util/HtcStorageChecker;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/htc/Weather/util/HtcStorageChecker;->checkIternalMemory()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 48
    .local v0, size:J
    const-wide/32 v4, 0x100000

    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit v3

    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 47
    .end local v0           #size:J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 26
    invoke-static {}, Lcom/htc/Weather/util/HtcStorageChecker;->checkIternalMemory()J

    move-result-wide v0

    .line 27
    .local v0, size:J
    const-wide/32 v2, 0x100000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 35
    :cond_0
    return-void
.end method
