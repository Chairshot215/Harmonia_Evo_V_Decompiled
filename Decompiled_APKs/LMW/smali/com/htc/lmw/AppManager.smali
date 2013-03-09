.class public Lcom/htc/lmw/AppManager;
.super Ljava/lang/Object;
.source "AppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lmw/AppManager$SizeObserver;,
        Lcom/htc/lmw/AppManager$ProgressListener;
    }
.end annotation


# static fields
.field public static final BYTES_IN_KB:I = 0x400

.field public static final BYTES_IN_MB:I = 0x100000

.field public static final CRITICAL_THRESHOLD:I = 0x14

.field private static final DATA_PATH:Ljava/lang/String; = "/data"

.field private static final GET_SIZE_WAIT_TIME:I = 0x7d0

.field private static final IGNORE_FLAGS:I = 0x20040001

.field private static final OPERATION_WAIT_TIME:I = 0xc350

.field private static final TAG:Ljava/lang/String; = "LMW/AppManager"

.field private static instance:Lcom/htc/lmw/AppManager;

.field public static sWasUnmountingStorage:Z


# instance fields
.field private final dataStatsFs:Landroid/os/StatFs;

.field private mContext:Landroid/content/Context;

.field private final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lmw/AppManager;->instance:Lcom/htc/lmw/AppManager;

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/lmw/AppManager;->sWasUnmountingStorage:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/htc/lmw/AppManager;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lmw/AppManager;->packageManager:Landroid/content/pm/PackageManager;

    .line 47
    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/data"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/lmw/AppManager;->dataStatsFs:Landroid/os/StatFs;

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/htc/lmw/AppManager;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/lmw/AppManager;->packageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getAppInfo(Landroid/content/pm/ApplicationInfo;ILjava/util/List;Lcom/htc/lmw/AppManager$SizeObserver;ZZ)Lcom/htc/lmw/AppInfo;
    .locals 9
    .parameter "ai"
    .parameter "ignoreWithFlags"
    .parameter
    .parameter "observer"
    .parameter "onlyMovable"
    .parameter "loadIconAndLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/htc/lmw/AppManager$SizeObserver;",
            "ZZ)",
            "Lcom/htc/lmw/AppInfo;"
        }
    .end annotation

    .prologue
    .local p3, whiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 92
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, p2

    if-lez v5, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :cond_1
    if-eqz p3, :cond_2

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 99
    :cond_2
    if-eqz p5, :cond_3

    .line 104
    :try_start_0
    iget-object v5, p0, Lcom/htc/lmw/AppManager;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 105
    .local v3, pi:Landroid/content/pm/PackageInfo;
    iget v5, v3, Landroid/content/pm/PackageInfo;->installLocation:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    iget v5, v3, Landroid/content/pm/PackageInfo;->installLocation:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 114
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    :cond_3
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 115
    .local v4, pkg:Ljava/lang/String;
    invoke-virtual {p4, v4}, Lcom/htc/lmw/AppManager$SizeObserver;->invokeGetSize(Ljava/lang/String;)V

    .line 117
    monitor-enter p4

    .line 121
    const-wide/16 v5, 0x7d0

    :try_start_1
    invoke-virtual {p4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    :goto_1
    :try_start_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    new-instance v0, Lcom/htc/lmw/AppInfo;

    invoke-direct {v0}, Lcom/htc/lmw/AppInfo;-><init>()V

    .line 130
    .local v0, app:Lcom/htc/lmw/AppInfo;
    iget-boolean v5, p4, Lcom/htc/lmw/AppManager$SizeObserver;->succeeded:Z

    if-eqz v5, :cond_4

    .line 132
    iget-object v5, p4, Lcom/htc/lmw/AppManager$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    iget-wide v5, v5, Landroid/content/pm/PackageStats;->codeSize:J

    iget-object v7, p4, Lcom/htc/lmw/AppManager$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    iget-wide v7, v7, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v5, v7

    iget-object v7, p4, Lcom/htc/lmw/AppManager$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    iget-wide v7, v7, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/htc/lmw/AppInfo;->size:J

    .line 133
    iget-object v5, p4, Lcom/htc/lmw/AppManager$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    iget-wide v5, v5, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v5, v0, Lcom/htc/lmw/AppInfo;->cacheSize:J

    .line 135
    :cond_4
    iput-object v4, v0, Lcom/htc/lmw/AppInfo;->packageName:Ljava/lang/String;

    .line 136
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v5, v0, Lcom/htc/lmw/AppInfo;->dataDir:Ljava/lang/String;

    .line 137
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v5, v0, Lcom/htc/lmw/AppInfo;->sourceDir:Ljava/lang/String;

    .line 139
    if-eqz p6, :cond_0

    .line 141
    iget-object v5, p0, Lcom/htc/lmw/AppManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Lcom/htc/lmw/AppInfo;->label:Ljava/lang/CharSequence;

    .line 142
    iget-object v5, p0, Lcom/htc/lmw/AppManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lcom/htc/lmw/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 108
    .end local v0           #app:Lcom/htc/lmw/AppInfo;
    .end local v4           #pkg:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 110
    .local v2, ignored:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 123
    .end local v2           #ignored:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #pkg:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 125
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v5, "LMW/AppManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed computing size for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 127
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method private getApplications(ILjava/util/List;ZZ)Ljava/util/List;
    .locals 11
    .parameter "ignoreWithFlags"
    .parameter
    .parameter "onlyMovable"
    .parameter "loadIconAndLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    .local p2, whiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/lmw/AppManager;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v7

    .line 152
    .local v7, ais:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .local v9, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/lmw/AppInfo;>;"
    new-instance v4, Lcom/htc/lmw/AppManager$SizeObserver;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/htc/lmw/AppManager$SizeObserver;-><init>(Lcom/htc/lmw/AppManager;Lcom/htc/lmw/AppManager$1;)V

    .line 155
    .local v4, observer:Lcom/htc/lmw/AppManager$SizeObserver;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .local v1, ai:Landroid/content/pm/ApplicationInfo;
    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    .line 157
    invoke-direct/range {v0 .. v6}, Lcom/htc/lmw/AppManager;->getAppInfo(Landroid/content/pm/ApplicationInfo;ILjava/util/List;Lcom/htc/lmw/AppManager$SizeObserver;ZZ)Lcom/htc/lmw/AppInfo;

    move-result-object v8

    .line 158
    .local v8, app:Lcom/htc/lmw/AppInfo;
    if-eqz v8, :cond_0

    .line 159
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    .end local v1           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v8           #app:Lcom/htc/lmw/AppInfo;
    :cond_1
    return-object v9
.end method

.method public static getInstance()Lcom/htc/lmw/AppManager;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/htc/lmw/AppManager;->instance:Lcom/htc/lmw/AppManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    new-instance v0, Lcom/htc/lmw/AppManager;

    invoke-direct {v0, p0}, Lcom/htc/lmw/AppManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/lmw/AppManager;->instance:Lcom/htc/lmw/AppManager;

    .line 53
    return-void
.end method


# virtual methods
.method public clearCache(Ljava/util/List;Lcom/htc/lmw/AppManager$ProgressListener;)V
    .locals 8
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;",
            "Lcom/htc/lmw/AppManager$ProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lmw/AppInfo;>;"
    new-instance v5, Lcom/htc/lmw/AppManager$1;

    invoke-direct {v5, p0}, Lcom/htc/lmw/AppManager$1;-><init>(Lcom/htc/lmw/AppManager;)V

    .line 251
    .local v5, observer:Landroid/content/pm/IPackageDataObserver$Stub;
    const/4 v2, 0x0

    .line 252
    .local v2, i:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 254
    .local v1, c:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lmw/AppInfo;

    .line 256
    .local v0, app:Lcom/htc/lmw/AppInfo;
    iget-object v6, p0, Lcom/htc/lmw/AppManager;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v7, v0, Lcom/htc/lmw/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 257
    monitor-enter v5

    .line 261
    const-wide/32 v6, 0xc350

    :try_start_0
    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-interface {p2, v2, v1}, Lcom/htc/lmw/AppManager$ProgressListener;->processed(II)V

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 266
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 263
    :catch_0
    move-exception v6

    goto :goto_1

    .line 269
    .end local v0           #app:Lcom/htc/lmw/AppInfo;
    :cond_0
    return-void
.end method

.method public getAppInfo(Ljava/lang/String;Ljava/util/List;ZZ)Lcom/htc/lmw/AppInfo;
    .locals 7
    .parameter "packageName"
    .parameter
    .parameter "onlyMovable"
    .parameter "loadIconAndLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/htc/lmw/AppInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 81
    .local p2, packageWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/lmw/AppManager;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const v2, 0x20040001

    new-instance v4, Lcom/htc/lmw/AppManager$SizeObserver;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/htc/lmw/AppManager$SizeObserver;-><init>(Lcom/htc/lmw/AppManager;Lcom/htc/lmw/AppManager$1;)V

    move-object v0, p0

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/htc/lmw/AppManager;->getAppInfo(Landroid/content/pm/ApplicationInfo;ILjava/util/List;Lcom/htc/lmw/AppManager$SizeObserver;ZZ)Lcom/htc/lmw/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDataFreeBytes()J
    .locals 6

    .prologue
    .line 70
    iget-object v1, p0, Lcom/htc/lmw/AppManager;->dataStatsFs:Landroid/os/StatFs;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/htc/lmw/AppManager;->dataStatsFs:Landroid/os/StatFs;

    const-string v2, "/data"

    invoke-virtual {v0, v2}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/htc/lmw/AppManager;->dataStatsFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v0

    int-to-long v2, v0

    iget-object v0, p0, Lcom/htc/lmw/AppManager;->dataStatsFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    monitor-exit v1

    return-wide v2

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDataTotalBytes()J
    .locals 6

    .prologue
    .line 62
    iget-object v1, p0, Lcom/htc/lmw/AppManager;->dataStatsFs:Landroid/os/StatFs;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/htc/lmw/AppManager;->dataStatsFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v2, v0

    iget-object v0, p0, Lcom/htc/lmw/AppManager;->dataStatsFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    monitor-exit v1

    return-wide v2

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInternalApplicationsWithCache(Ljava/util/List;Z)Ljava/util/List;
    .locals 8
    .parameter
    .parameter "loadIconAndLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, whiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/high16 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {p0, v4, p1, v5, p2}, Lcom/htc/lmw/AppManager;->getApplications(ILjava/util/List;ZZ)Ljava/util/List;

    move-result-object v1

    .line 192
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lmw/AppInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    .local v2, appsWithCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lmw/AppInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lmw/AppInfo;

    .line 196
    .local v0, app:Lcom/htc/lmw/AppInfo;
    iget-wide v4, v0, Lcom/htc/lmw/AppInfo;->cacheSize:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 197
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    .end local v0           #app:Lcom/htc/lmw/AppInfo;
    :cond_1
    return-object v2
.end method

.method public getMovableApplications(Ljava/util/List;Z)Ljava/util/List;
    .locals 2
    .parameter
    .parameter "loadIconAndLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, whiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const v0, 0x20040001

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/htc/lmw/AppManager;->getApplications(ILjava/util/List;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRarelyUsedInternalApplicationsWithCache(Ljava/util/List;Z)Ljava/util/List;
    .locals 12
    .parameter
    .parameter "loadIconAndLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, whiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 210
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 211
    .local v7, whiteListIncludingRecentApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/htc/lmw/AppManager;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 212
    .local v4, m:Landroid/app/ActivityManager;
    const/16 v8, 0x14

    invoke-virtual {v4, v8, v10}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v6

    .line 213
    .local v6, recents:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 215
    .local v5, recent:Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v8, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    .end local v5           #recent:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_0
    const/high16 v8, 0x4

    invoke-direct {p0, v8, v7, v10, p2}, Lcom/htc/lmw/AppManager;->getApplications(ILjava/util/List;ZZ)Ljava/util/List;

    move-result-object v1

    .line 220
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lmw/AppInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    .local v2, appsWithCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lmw/AppInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lmw/AppInfo;

    .line 224
    .local v0, app:Lcom/htc/lmw/AppInfo;
    iget-wide v8, v0, Lcom/htc/lmw/AppInfo;->cacheSize:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 225
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 228
    .end local v0           #app:Lcom/htc/lmw/AppInfo;
    :cond_2
    return-object v2
.end method

.method public getUninstallableApplications(Ljava/util/List;Z)Ljava/util/List;
    .locals 2
    .parameter
    .parameter "loadIconAndLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, whiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const v0, 0x20040001

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/htc/lmw/AppManager;->getApplications(ILjava/util/List;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public moveToSdCard(Ljava/util/List;Lcom/htc/lmw/AppManager$ProgressListener;)Z
    .locals 11
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;",
            "Lcom/htc/lmw/AppManager$ProgressListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lmw/AppInfo;>;"
    const/4 v7, 0x0

    .line 281
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 282
    .local v6, storageError:Ljava/util/concurrent/atomic/AtomicBoolean;
    sput-boolean v7, Lcom/htc/lmw/AppManager;->sWasUnmountingStorage:Z

    .line 283
    new-instance v5, Lcom/htc/lmw/AppManager$2;

    invoke-direct {v5, p0, v6}, Lcom/htc/lmw/AppManager$2;-><init>(Lcom/htc/lmw/AppManager;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 305
    .local v5, observer:Landroid/content/pm/IPackageMoveObserver$Stub;
    const/4 v2, 0x0

    .line 306
    .local v2, i:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 308
    .local v1, c:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lmw/AppInfo;

    .line 310
    .local v0, app:Lcom/htc/lmw/AppInfo;
    iget-object v8, p0, Lcom/htc/lmw/AppManager;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v9, v0, Lcom/htc/lmw/AppInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v5, v10}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    .line 312
    monitor-enter v5

    .line 316
    const-wide/32 v8, 0xc350

    :try_start_0
    invoke-virtual {v5, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 328
    .end local v0           #app:Lcom/htc/lmw/AppInfo;
    :goto_2
    return v7

    .line 321
    .restart local v0       #app:Lcom/htc/lmw/AppInfo;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 326
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-interface {p2, v2, v1}, Lcom/htc/lmw/AppManager$ProgressListener;->processed(II)V

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 328
    .end local v0           #app:Lcom/htc/lmw/AppInfo;
    :cond_1
    const/4 v7, 0x1

    goto :goto_2

    .line 318
    .restart local v0       #app:Lcom/htc/lmw/AppInfo;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public uninstall(Ljava/util/List;Lcom/htc/lmw/AppManager$ProgressListener;)V
    .locals 9
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;",
            "Lcom/htc/lmw/AppManager$ProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lmw/AppInfo;>;"
    new-instance v5, Lcom/htc/lmw/AppManager$3;

    invoke-direct {v5, p0}, Lcom/htc/lmw/AppManager$3;-><init>(Lcom/htc/lmw/AppManager;)V

    .line 360
    .local v5, observer:Landroid/content/pm/IPackageDeleteObserver$Stub;
    const/4 v2, 0x0

    .line 361
    .local v2, i:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 363
    .local v1, c:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lmw/AppInfo;

    .line 365
    .local v0, app:Lcom/htc/lmw/AppInfo;
    iget-object v6, p0, Lcom/htc/lmw/AppManager;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v7, v0, Lcom/htc/lmw/AppInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v5, v8}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 366
    monitor-enter v5

    .line 370
    const-wide/32 v6, 0xc350

    :try_start_0
    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-interface {p2, v2, v1}, Lcom/htc/lmw/AppManager$ProgressListener;->processed(II)V

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 375
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 372
    :catch_0
    move-exception v6

    goto :goto_1

    .line 378
    .end local v0           #app:Lcom/htc/lmw/AppInfo;
    :cond_0
    return-void
.end method
