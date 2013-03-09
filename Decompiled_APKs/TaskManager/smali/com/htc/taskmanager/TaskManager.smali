.class public Lcom/htc/taskmanager/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/taskmanager/TaskManager$1;,
        Lcom/htc/taskmanager/TaskManager$KillerThread;,
        Lcom/htc/taskmanager/TaskManager$SortOrder;
    }
.end annotation


# static fields
.field private static final KILLING_INTENT_ACTION:Ljava/lang/String; = "com.htc.taskmanager.action.killapp"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final RECEIVER_PERMISSION:Ljava/lang/String; = "com.htc.taskmanager.permission.killapp"

.field private static final TAG:Ljava/lang/String; = "TaskManager"

.field private static final mPackageBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/htc/taskmanager/TaskManager;

.field private static sPool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mChildTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/taskmanager/TaskInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFirstNotificated:Z

.field private mNotKilledYet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifRoutine:Ljava/lang/Runnable;

.field private mPackageGreenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSortOrder:Lcom/htc/taskmanager/TaskManager$SortOrder;

.field private mUntouchableServiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateListSem:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/taskmanager/TaskManager;->sInstance:Lcom/htc/taskmanager/TaskManager;

    .line 49
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/htc/taskmanager/TaskManager;->sPool:Ljava/util/concurrent/ExecutorService;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.htc.fm"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.htc.music"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/htc/taskmanager/TaskManager;->mPackageBlackList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/htc/taskmanager/TaskManager$SortOrder;->SORT_BY_MEMORY:Lcom/htc/taskmanager/TaskManager$SortOrder;

    iput-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mSortOrder:Lcom/htc/taskmanager/TaskManager$SortOrder;

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.server.ShowWatermarkService"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mUntouchableServiceList:Ljava/util/List;

    .line 56
    iput-object v3, p0, Lcom/htc/taskmanager/TaskManager;->mPackageWhiteList:Ljava/util/List;

    .line 57
    iput-object v3, p0, Lcom/htc/taskmanager/TaskManager;->mPackageGreenList:Ljava/util/List;

    .line 59
    iput-object v3, p0, Lcom/htc/taskmanager/TaskManager;->mContext:Landroid/content/Context;

    .line 60
    iput-object v3, p0, Lcom/htc/taskmanager/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 61
    iput-object v3, p0, Lcom/htc/taskmanager/TaskManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 62
    iput-object v3, p0, Lcom/htc/taskmanager/TaskManager;->mChildTasks:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mNotKilledYet:Ljava/util/List;

    .line 65
    iput-object v3, p0, Lcom/htc/taskmanager/TaskManager;->mNotifRoutine:Ljava/lang/Runnable;

    .line 66
    iput-boolean v4, p0, Lcom/htc/taskmanager/TaskManager;->mFirstNotificated:Z

    .line 68
    iput-object v3, p0, Lcom/htc/taskmanager/TaskManager;->mUpdateListSem:Ljava/lang/Object;

    .line 96
    invoke-direct {p0, p1}, Lcom/htc/taskmanager/TaskManager;->setContext(Landroid/content/Context;)V

    .line 97
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 98
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mPackageWhiteList:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mPackageGreenList:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mUpdateListSem:Ljava/lang/Object;

    .line 104
    invoke-direct {p0}, Lcom/htc/taskmanager/TaskManager;->setupWhiteList()V

    .line 105
    invoke-direct {p0}, Lcom/htc/taskmanager/TaskManager;->setupGreenList()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/htc/taskmanager/TaskManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/taskmanager/TaskManager;)Landroid/app/ActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/htc/taskmanager/TaskManager;->mPackageBlackList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/taskmanager/TaskManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/htc/taskmanager/TaskManager;->forceStopServices(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/taskmanager/TaskManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mUpdateListSem:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/taskmanager/TaskManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mNotKilledYet:Ljava/util/List;

    return-object v0
.end method

.method private forceStopServices(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, runningServices:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .local p2, servicesToKill:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 156
    .local v1, srv:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v2, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const-string v2, "TaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "force stop stop service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v2, p0, Lcom/htc/taskmanager/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v3, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    .end local v1           #srv:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    return-void
.end method

.method private getBranchMemory(Lcom/htc/taskmanager/TaskInfo;)J
    .locals 6
    .parameter "rootTask"

    .prologue
    .line 226
    const-wide/16 v1, 0x0

    .line 228
    .local v1, result:J
    iget-object v4, p0, Lcom/htc/taskmanager/TaskManager;->mChildTasks:Ljava/util/Map;

    iget-object v5, p1, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/taskmanager/TaskInfo;

    .line 229
    .local v3, task:Lcom/htc/taskmanager/TaskInfo;
    iget-wide v4, v3, Lcom/htc/taskmanager/TaskInfo;->mTotalMemoryKb:J

    add-long/2addr v1, v4

    goto :goto_0

    .line 232
    .end local v3           #task:Lcom/htc/taskmanager/TaskInfo;
    :cond_0
    return-wide v1
.end method

.method public static getInstance()Lcom/htc/taskmanager/TaskManager;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/htc/taskmanager/TaskManager;->sInstance:Lcom/htc/taskmanager/TaskManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    sget-object v0, Lcom/htc/taskmanager/TaskManager;->sInstance:Lcom/htc/taskmanager/TaskManager;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/htc/taskmanager/TaskManager;

    invoke-direct {v0, p0}, Lcom/htc/taskmanager/TaskManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/taskmanager/TaskManager;->sInstance:Lcom/htc/taskmanager/TaskManager;

    .line 81
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 79
    :cond_0
    sget-object v0, Lcom/htc/taskmanager/TaskManager;->sInstance:Lcom/htc/taskmanager/TaskManager;

    invoke-direct {v0, p0}, Lcom/htc/taskmanager/TaskManager;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static isInBlackList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .parameter "pkg"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 172
    .local v1, service:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v2, v1, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/taskmanager/TaskManager;->mPackageBlackList:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    const/4 v2, 0x1

    .line 175
    .end local v1           #service:Landroid/app/ActivityManager$RunningServiceInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isTaskAlreadyKilling(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 353
    .local v0, result:Z
    iget-object v2, p0, Lcom/htc/taskmanager/TaskManager;->mNotKilledYet:Ljava/util/List;

    monitor-enter v2

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/htc/taskmanager/TaskManager;->mNotKilledYet:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 355
    monitor-exit v2

    .line 357
    return v0

    .line 355
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyFirstFounded()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mNotifRoutine:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/taskmanager/TaskManager;->mNotifRoutine:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/taskmanager/TaskManager;->mFirstNotificated:Z

    .line 240
    :cond_0
    return-void
.end method

.method private relinkTask(Ljava/util/List;Lcom/htc/taskmanager/TaskInfo;)V
    .locals 5
    .parameter
    .parameter "task"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/taskmanager/TaskInfo;",
            ">;",
            "Lcom/htc/taskmanager/TaskInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, taskList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/taskmanager/TaskInfo;>;"
    iget-object v3, p2, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    iget-object v4, p2, Lcom/htc/taskmanager/TaskInfo;->mBasePkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 180
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 181
    .local v1, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 182
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/taskmanager/TaskInfo;

    .line 183
    .local v2, ti:Lcom/htc/taskmanager/TaskInfo;
    iget-object v3, v2, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    iget-object v4, p2, Lcom/htc/taskmanager/TaskInfo;->mBasePkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    invoke-direct {p0, p1, v2}, Lcom/htc/taskmanager/TaskManager;->relinkTask(Ljava/util/List;Lcom/htc/taskmanager/TaskInfo;)V

    .line 185
    iget-object v3, v2, Lcom/htc/taskmanager/TaskInfo;->mBasePkg:Ljava/lang/String;

    iput-object v3, p2, Lcom/htc/taskmanager/TaskInfo;->mBasePkg:Ljava/lang/String;

    .line 190
    .end local v0           #i:I
    .end local v1           #listSize:I
    .end local v2           #ti:Lcom/htc/taskmanager/TaskInfo;
    :cond_0
    return-void

    .line 181
    .restart local v0       #i:I
    .restart local v1       #listSize:I
    .restart local v2       #ti:Lcom/htc/taskmanager/TaskInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/htc/taskmanager/TaskManager;->mContext:Landroid/content/Context;

    .line 113
    return-void
.end method

.method private setupGreenList()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mPackageGreenList:Ljava/util/List;

    const-string v1, "com.htc.fm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mPackageGreenList:Ljava/util/List;

    const-string v1, "com.samoilovich.testapp1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mPackageGreenList:Ljava/util/List;

    const-string v1, "com.samoilovich.testapp2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method private setupWhiteList()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mPackageWhiteList:Ljava/util/List;

    const-string v1, "com.htc.taskmanager"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mPackageWhiteList:Ljava/util/List;

    const-string v1, "com.htc.launcher"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mPackageWhiteList:Ljava/util/List;

    const-string v1, "com.android.launcher"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mPackageWhiteList:Ljava/util/List;

    const-string v1, "com.android.launcher2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mPackageWhiteList:Ljava/util/List;

    const-string v1, "com.android.internal.statusbar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mPackageWhiteList:Ljava/util/List;

    const-string v1, "com.android.systemui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mPackageWhiteList:Ljava/util/List;

    const-string v1, "com.htc.android.worldclock"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mPackageWhiteList:Ljava/util/List;

    const-string v1, "com.htc.mysketcher"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mPackageWhiteList:Ljava/util/List;

    const-string v1, "com.android.phone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mPackageWhiteList:Ljava/util/List;

    const-string v1, "com.android.htcdialer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mPackageWhiteList:Ljava/util/List;

    const-string v1, "com.htc.home.personalize"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mPackageWhiteList:Ljava/util/List;

    const-string v1, "com.htc.MobileRecorder"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mPackageWhiteList:Ljava/util/List;

    const-string v1, "com.htc.android.mail"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mPackageWhiteList:Ljava/util/List;

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method private siftList(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/taskmanager/TaskInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/taskmanager/TaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, taskList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/taskmanager/TaskInfo;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/htc/taskmanager/TaskManager;->mChildTasks:Ljava/util/Map;

    .line 198
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/taskmanager/TaskInfo;

    .line 199
    .local v4, ti:Lcom/htc/taskmanager/TaskInfo;
    invoke-direct {p0, p1, v4}, Lcom/htc/taskmanager/TaskManager;->relinkTask(Ljava/util/List;Lcom/htc/taskmanager/TaskInfo;)V

    goto :goto_0

    .line 202
    .end local v4           #ti:Lcom/htc/taskmanager/TaskInfo;
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 203
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/taskmanager/TaskInfo;

    .line 205
    .local v3, task:Lcom/htc/taskmanager/TaskInfo;
    iget-object v5, v3, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    iget-object v6, v3, Lcom/htc/taskmanager/TaskInfo;->mBasePkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 206
    iget-object v2, v3, Lcom/htc/taskmanager/TaskInfo;->mBasePkg:Ljava/lang/String;

    .line 207
    .local v2, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/taskmanager/TaskManager;->mChildTasks:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 208
    iget-object v5, p0, Lcom/htc/taskmanager/TaskManager;->mChildTasks:Ljava/util/Map;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_1
    iget-object v5, p0, Lcom/htc/taskmanager/TaskManager;->mChildTasks:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 212
    .end local v2           #key:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 216
    .end local v3           #task:Lcom/htc/taskmanager/TaskInfo;
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/taskmanager/TaskInfo;

    .line 217
    .restart local v4       #ti:Lcom/htc/taskmanager/TaskInfo;
    iget-object v5, p0, Lcom/htc/taskmanager/TaskManager;->mChildTasks:Ljava/util/Map;

    iget-object v6, v4, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 218
    iget-wide v5, v4, Lcom/htc/taskmanager/TaskInfo;->mTotalMemoryKb:J

    invoke-direct {p0, v4}, Lcom/htc/taskmanager/TaskManager;->getBranchMemory(Lcom/htc/taskmanager/TaskInfo;)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/htc/taskmanager/TaskInfo;->mTotalMemoryKb:J

    goto :goto_2

    .line 222
    .end local v4           #ti:Lcom/htc/taskmanager/TaskInfo;
    :cond_5
    return-object p1
.end method


# virtual methods
.method public getSortOrder()Lcom/htc/taskmanager/TaskManager$SortOrder;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/htc/taskmanager/TaskManager;->mSortOrder:Lcom/htc/taskmanager/TaskManager$SortOrder;

    return-object v0
.end method

.method public getTaskIcon(Lcom/htc/taskmanager/TaskInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "task"

    .prologue
    .line 431
    :try_start_0
    iget-object v1, p1, Lcom/htc/taskmanager/TaskInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/htc/taskmanager/TaskManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p1, Lcom/htc/taskmanager/TaskInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 433
    :cond_0
    iget-object v1, p1, Lcom/htc/taskmanager/TaskInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_0
    return-object v1

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 436
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized killTask(Lcom/htc/taskmanager/TaskInfo;)Z
    .locals 9
    .parameter "ti"

    .prologue
    const/4 v6, 0x1

    .line 372
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/htc/taskmanager/TaskManager;->mChildTasks:Ljava/util/Map;

    iget-object v7, p1, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 375
    .local v0, containsChild:Z
    :try_start_1
    iget-object v5, p0, Lcom/htc/taskmanager/TaskManager;->mPackageGreenList:Ljava/util/List;

    iget-object v7, p1, Lcom/htc/taskmanager/TaskInfo;->mBasePkg:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 376
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 377
    .local v3, killingIntent:Landroid/content/Intent;
    const-string v5, "packageName"

    iget-object v7, p1, Lcom/htc/taskmanager/TaskInfo;->mBasePkg:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v5, "com.htc.taskmanager.action.killapp"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    iget-object v5, p0, Lcom/htc/taskmanager/TaskManager;->mContext:Landroid/content/Context;

    const-string v7, "com.htc.taskmanager.permission.killapp"

    invoke-virtual {v5, v3, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v6

    .line 403
    .end local v3           #killingIntent:Landroid/content/Intent;
    :goto_0
    monitor-exit p0

    return v5

    .line 382
    :cond_0
    :try_start_2
    iget-object v7, p0, Lcom/htc/taskmanager/TaskManager;->mNotKilledYet:Ljava/util/List;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 383
    :try_start_3
    iget-object v5, p0, Lcom/htc/taskmanager/TaskManager;->mNotKilledYet:Ljava/util/List;

    iget-object v8, p1, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    if-eqz v0, :cond_1

    .line 385
    iget-object v5, p0, Lcom/htc/taskmanager/TaskManager;->mChildTasks:Ljava/util/Map;

    iget-object v8, p1, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/taskmanager/TaskInfo;

    .line 386
    .local v4, task:Lcom/htc/taskmanager/TaskInfo;
    iget-object v5, p0, Lcom/htc/taskmanager/TaskManager;->mNotKilledYet:Ljava/util/List;

    iget-object v8, v4, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 389
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #task:Lcom/htc/taskmanager/TaskInfo;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 403
    const/4 v5, 0x0

    goto :goto_0

    .line 389
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 391
    if-eqz v0, :cond_2

    .line 392
    :try_start_7
    iget-object v5, p0, Lcom/htc/taskmanager/TaskManager;->mChildTasks:Ljava/util/Map;

    iget-object v7, p1, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/taskmanager/TaskInfo;

    .line 393
    .restart local v4       #task:Lcom/htc/taskmanager/TaskInfo;
    sget-object v5, Lcom/htc/taskmanager/TaskManager;->sPool:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/htc/taskmanager/TaskManager$KillerThread;

    invoke-direct {v7, p0, v4}, Lcom/htc/taskmanager/TaskManager$KillerThread;-><init>(Lcom/htc/taskmanager/TaskManager;Lcom/htc/taskmanager/TaskInfo;)V

    invoke-interface {v5, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    .line 372
    .end local v0           #containsChild:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #task:Lcom/htc/taskmanager/TaskInfo;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 397
    .restart local v0       #containsChild:Z
    :cond_2
    :try_start_8
    sget-object v5, Lcom/htc/taskmanager/TaskManager;->sPool:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/htc/taskmanager/TaskManager$KillerThread;

    invoke-direct {v7, p0, p1}, Lcom/htc/taskmanager/TaskManager$KillerThread;-><init>(Lcom/htc/taskmanager/TaskManager;Lcom/htc/taskmanager/TaskInfo;)V

    invoke-interface {v5, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move v5, v6

    .line 399
    goto :goto_0
.end method

.method public killTasks(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/taskmanager/TaskInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 413
    .local p1, tasks:Ljava/util/List;,"Ljava/util/List<Lcom/htc/taskmanager/TaskInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/taskmanager/TaskInfo;

    .line 415
    .local v2, ti:Lcom/htc/taskmanager/TaskInfo;
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/htc/taskmanager/TaskManager;->killTask(Lcom/htc/taskmanager/TaskInfo;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 421
    .end local v0           #e:Ljava/lang/SecurityException;
    .end local v2           #ti:Lcom/htc/taskmanager/TaskInfo;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public loadTasksList()Ljava/util/List;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/taskmanager/TaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/taskmanager/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 252
    .local v4, appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 253
    .local v17, pids:[I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v9, v0, :cond_0

    .line 254
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v0, v29

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v29, v0

    aput v29, v17, v9

    .line 253
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 258
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/taskmanager/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v14

    .line 259
    .local v14, memInfo:[Landroid/os/Debug$MemoryInfo;
    new-instance v15, Ljava/util/TreeMap;

    invoke-direct {v15}, Ljava/util/TreeMap;-><init>()V

    .line 260
    .local v15, memStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/Debug$MemoryInfo;>;"
    const/4 v9, 0x0

    :goto_1
    array-length v0, v14

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v9, v0, :cond_1

    .line 261
    aget v29, v17, v9

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aget-object v30, v14, v9

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 265
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/taskmanager/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v29, v0

    const/16 v30, 0x3e8

    invoke-virtual/range {v29 .. v30}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v24

    .line 266
    .local v24, taskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/taskmanager/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v29, v0

    const/16 v30, 0x400

    invoke-virtual/range {v29 .. v30}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v23

    .line 268
    .local v23, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 269
    .local v19, pkgTaskList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 270
    .local v21, rti:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    .line 271
    .local v28, topPkgName:Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 273
    .local v7, basePkgName:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 277
    .end local v7           #basePkgName:Ljava/lang/String;
    .end local v21           #rti:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v28           #topPkgName:Ljava/lang/String;
    :cond_2
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v25, taskSummary:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/taskmanager/TaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 279
    .local v20, rapi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Debug$MemoryInfo;

    .line 281
    .local v16, mi:Landroid/os/Debug$MemoryInfo;
    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v5, arr$:[Ljava/lang/String;
    array-length v13, v5

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    move v12, v11

    .end local v11           #i$:I
    .local v12, i$:I
    :goto_3
    if-ge v12, v13, :cond_3

    aget-object v18, v5, v12

    .line 282
    .local v18, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/taskmanager/TaskManager;->mPackageWhiteList:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_9

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/htc/taskmanager/TaskManager;->isInBlackList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_9

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/taskmanager/TaskManager;->isTaskAlreadyKilling(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_9

    .line 286
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/taskmanager/TaskManager;->mFirstNotificated:Z

    move/from16 v29, v0

    if-nez v29, :cond_5

    .line 287
    invoke-direct/range {p0 .. p0}, Lcom/htc/taskmanager/TaskManager;->notifyFirstFounded()V

    .line 290
    :cond_5
    :try_start_0
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/htc/taskmanager/TaskInfo;

    .line 291
    .local v27, ti:Lcom/htc/taskmanager/TaskInfo;
    if-nez v27, :cond_7

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/taskmanager/TaskManager;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 294
    .local v3, ai:Landroid/content/pm/ApplicationInfo;
    new-instance v27, Lcom/htc/taskmanager/TaskInfo;

    .end local v27           #ti:Lcom/htc/taskmanager/TaskInfo;
    invoke-direct/range {v27 .. v27}, Lcom/htc/taskmanager/TaskInfo;-><init>()V

    .line 295
    .restart local v27       #ti:Lcom/htc/taskmanager/TaskInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/taskmanager/TaskManager;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/htc/taskmanager/TaskInfo;->mAppName:Ljava/lang/String;

    .line 296
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/htc/taskmanager/TaskInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 297
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput v0, v1, Lcom/htc/taskmanager/TaskInfo;->mFlags:I

    .line 299
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    .line 300
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 301
    .local v6, basePkg:Ljava/lang/String;
    if-nez v6, :cond_6

    move-object/from16 v6, v18

    .end local v6           #basePkg:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v27

    iput-object v6, v0, Lcom/htc/taskmanager/TaskInfo;->mBasePkg:Ljava/lang/String;

    .line 303
    const-wide/16 v29, 0x0

    move-wide/from16 v0, v29

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/htc/taskmanager/TaskInfo;->mTotalMemoryKb:J

    .line 306
    .end local v3           #ai:Landroid/content/pm/ApplicationInfo;
    :cond_7
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/htc/taskmanager/TaskInfo;->mTotalMemoryKb:J

    move-wide/from16 v29, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v31

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    div-int v31, v31, v32

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v31, v0

    add-long v29, v29, v31

    move-wide/from16 v0, v29

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/htc/taskmanager/TaskInfo;->mTotalMemoryKb:J

    .line 307
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/taskmanager/TaskInfo;->mServices:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->clear()V

    .line 309
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v12           #i$:I
    .local v11, i$:Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 310
    .local v22, service:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v29, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/taskmanager/TaskManager;->mUntouchableServiceList:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8

    .line 312
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/taskmanager/TaskInfo;->mServices:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 320
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v22           #service:Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v27           #ti:Lcom/htc/taskmanager/TaskInfo;
    :catch_0
    move-exception v8

    .line 321
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 281
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_9
    :goto_5
    add-int/lit8 v11, v12, 0x1

    .local v11, i$:I
    move v12, v11

    .end local v11           #i$:I
    .restart local v12       #i$:I
    goto/16 :goto_3

    .line 317
    .end local v12           #i$:I
    .local v11, i$:Ljava/util/Iterator;
    .restart local v27       #ti:Lcom/htc/taskmanager/TaskInfo;
    :cond_a
    :try_start_1
    move-object/from16 v0, v27

    iget v0, v0, Lcom/htc/taskmanager/TaskInfo;->mFlags:I

    move/from16 v29, v0

    const/high16 v30, 0x20

    and-int v29, v29, v30

    if-nez v29, :cond_9

    .line 318
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 328
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #len$:I
    .end local v16           #mi:Landroid/os/Debug$MemoryInfo;
    .end local v18           #pkg:Ljava/lang/String;
    .end local v20           #rapi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v27           #ti:Lcom/htc/taskmanager/TaskInfo;
    :cond_b
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v26, tasks:Ljava/util/List;,"Ljava/util/List<Lcom/htc/taskmanager/TaskInfo;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 332
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/taskmanager/TaskManager;->siftList(Ljava/util/List;)Ljava/util/List;

    move-result-object v26

    .line 334
    sget-object v29, Lcom/htc/taskmanager/TaskManager$1;->$SwitchMap$com$htc$taskmanager$TaskManager$SortOrder:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/taskmanager/TaskManager;->mSortOrder:Lcom/htc/taskmanager/TaskManager$SortOrder;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/taskmanager/TaskManager$SortOrder;->ordinal()I

    move-result v30

    aget v29, v29, v30

    packed-switch v29, :pswitch_data_0

    .line 340
    sget-object v29, Lcom/htc/taskmanager/TaskInfo;->MEMORY_USAGE_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 343
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/taskmanager/TaskManager;->mUpdateListSem:Ljava/lang/Object;

    move-object/from16 v30, v0

    monitor-enter v30

    .line 344
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/taskmanager/TaskManager;->mUpdateListSem:Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->notifyAll()V

    .line 345
    monitor-exit v30
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    return-object v26

    .line 336
    :pswitch_0
    sget-object v29, Lcom/htc/taskmanager/TaskInfo;->ALPHABETICAL_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_6

    .line 345
    :catchall_0
    move-exception v29

    :try_start_3
    monitor-exit v30
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v29

    .line 334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setNotifyOnFirstFounded(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "threadRoutine"

    .prologue
    .line 552
    iput-object p1, p0, Lcom/htc/taskmanager/TaskManager;->mNotifRoutine:Ljava/lang/Runnable;

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/taskmanager/TaskManager;->mFirstNotificated:Z

    .line 554
    return-void
.end method

.method public setSortOrder(Lcom/htc/taskmanager/TaskManager$SortOrder;)V
    .locals 0
    .parameter "order"

    .prologue
    .line 444
    iput-object p1, p0, Lcom/htc/taskmanager/TaskManager;->mSortOrder:Lcom/htc/taskmanager/TaskManager$SortOrder;

    .line 445
    return-void
.end method

.method public declared-synchronized viewDetails(Lcom/htc/taskmanager/TaskInfo;)V
    .locals 4
    .parameter "ti"

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 362
    .local v0, detailsIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/taskmanager/TaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    monitor-exit p0

    return-void

    .line 361
    .end local v0           #detailsIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
