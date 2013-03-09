.class Landroid/os/memory/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/memory/RunningState$ServiceProcessComparator;,
        Landroid/os/memory/RunningState$MergedItem;,
        Landroid/os/memory/RunningState$ProcessItem;,
        Landroid/os/memory/RunningState$ServiceItem;,
        Landroid/os/memory/RunningState$BaseItem;,
        Landroid/os/memory/RunningState$OnRefreshUiListener;,
        Landroid/os/memory/RunningState$BackgroundHandler;,
        Landroid/os/memory/RunningState$AppProcessInfo;
    }
.end annotation


# static fields
.field static final CONTENTS_UPDATE_DELAY:J = 0x7d0L

.field static final MAX_SERVICES:I = 0x64

.field static final MSG_REFRESH_UI:I = 0x3

.field static final MSG_RESET_CONTENTS:I = 0x1

.field static final MSG_UPDATE_CONTENTS:I = 0x2

.field static final MSG_UPDATE_TIME:I = 0x4

.field static final TIME_UPDATE_DELAY:J = 0x3e8L

.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Landroid/os/memory/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mInterestingConfigChanges:Landroid/os/memory/InterestingConfigChanges;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Landroid/os/memory/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/memory/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Landroid/os/memory/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/memory/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/memory/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/memory/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/memory/RunningState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/memory/InterestingConfigChanges;

    invoke-direct {v0}, Landroid/os/memory/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mInterestingConfigChanges:Landroid/os/memory/InterestingConfigChanges;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    new-instance v0, Landroid/os/memory/RunningState$ServiceProcessComparator;

    invoke-direct {v0}, Landroid/os/memory/RunningState$ServiceProcessComparator;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mServiceProcessComparator:Landroid/os/memory/RunningState$ServiceProcessComparator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iput v2, p0, Landroid/os/memory/RunningState;->mSequence:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mMergedItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/memory/RunningState$1;

    invoke-direct {v0, p0}, Landroid/os/memory/RunningState$1;-><init>(Landroid/os/memory/RunningState;)V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/os/memory/RunningState;->mApplicationContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/os/memory/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Landroid/os/memory/RunningState;->mAm:Landroid/app/ActivityManager;

    iget-object v0, p0, Landroid/os/memory/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/memory/RunningState;->mPm:Landroid/content/pm/PackageManager;

    iput-boolean v2, p0, Landroid/os/memory/RunningState;->mResumed:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/memory/RunningState$BackgroundHandler;

    iget-object v1, p0, Landroid/os/memory/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/os/memory/RunningState$BackgroundHandler;-><init>(Landroid/os/memory/RunningState;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    return-void
.end method

.method static synthetic access$000(Landroid/os/memory/RunningState;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/memory/RunningState;->reset()V

    return-void
.end method

.method static synthetic access$100(Landroid/os/memory/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/os/memory/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method static getInstance(Landroid/content/Context;)Landroid/os/memory/RunningState;
    .locals 2

    sget-object v1, Landroid/os/memory/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/os/memory/RunningState;->sInstance:Landroid/os/memory/RunningState;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/memory/RunningState;

    invoke-direct {v0, p0}, Landroid/os/memory/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/os/memory/RunningState;->sInstance:Landroid/os/memory/RunningState;

    :cond_0
    sget-object v0, Landroid/os/memory/RunningState;->sInstance:Landroid/os/memory/RunningState;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0xaa

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 4

    if-eqz p2, :cond_2

    iget v2, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, p1

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    iget-object v0, p0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 58

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v54, v0

    add-int/lit8 v54, v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Landroid/os/memory/RunningState;->mSequence:I

    const/4 v15, 0x0

    const/16 v54, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v47

    if-eqz v47, :cond_1

    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    const/16 v22, 0x0

    :goto_1
    move/from16 v0, v22

    if-ge v0, v9, :cond_3

    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v0, v48

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v54, v0

    if-nez v54, :cond_2

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v54, v0

    if-nez v54, :cond_2

    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v22, v22, -0x1

    add-int/lit8 v9, v9, -0x1

    :cond_0
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v54, v0

    and-int/lit8 v54, v54, 0x8

    if-eqz v54, :cond_0

    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v22, v22, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v42

    if-eqz v42, :cond_4

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->size()I

    move-result v7

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->clear()V

    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    if-ge v0, v7, :cond_5

    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v55, v0

    new-instance v56, Landroid/os/memory/RunningState$AppProcessInfo;

    move-object/from16 v0, v56

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/os/memory/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v54 .. v56}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v22

    if-ge v0, v9, :cond_7

    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmp-long v54, v54, v56

    if-nez v54, :cond_6

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v54, v0

    if-lez v54, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/memory/RunningState$AppProcessInfo;

    if-eqz v10, :cond_6

    const/16 v54, 0x1

    move/from16 v0, v54

    iput-boolean v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->hasServices:Z

    move-object/from16 v0, v48

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v54, v0

    if-eqz v54, :cond_6

    const/16 v54, 0x1

    move/from16 v0, v54

    iput-boolean v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->hasForegroundServices:Z

    :cond_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    :cond_7
    const/16 v22, 0x0

    :goto_6
    move/from16 v0, v22

    if-ge v0, v9, :cond_13

    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmp-long v54, v54, v56

    if-nez v54, :cond_b

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v54, v0

    if-lez v54, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/memory/RunningState$AppProcessInfo;

    if-eqz v10, :cond_b

    iget-boolean v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->hasForegroundServices:Z

    move/from16 v54, v0

    if-nez v54, :cond_b

    iget-object v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0x12c

    move/from16 v0, v54

    move/from16 v1, v55

    if-ge v0, v1, :cond_b

    const/16 v50, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    iget-object v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/memory/RunningState$AppProcessInfo;

    :goto_7
    if-eqz v10, :cond_9

    iget-boolean v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->hasServices:Z

    move/from16 v54, v0

    if-nez v54, :cond_8

    iget-object v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Landroid/os/memory/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v54

    if-eqz v54, :cond_a

    :cond_8
    const/16 v50, 0x1

    :cond_9
    if-eqz v50, :cond_b

    :goto_8
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    iget-object v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/memory/RunningState$AppProcessInfo;

    goto :goto_7

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/HashMap;

    if-nez v43, :cond_c

    new-instance v43, Ljava/util/HashMap;

    invoke-direct/range {v43 .. v43}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_c
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    if-nez v41, :cond_d

    const/4 v15, 0x1

    new-instance v41, Landroid/os/memory/RunningState$ProcessItem;

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v54, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move/from16 v2, v54

    move-object/from16 v3, v55

    invoke-direct {v0, v1, v2, v3}, Landroid/os/memory/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v54

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_11

    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmp-long v54, v54, v56

    if-nez v54, :cond_12

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v37, v0

    :goto_9
    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    move/from16 v0, v37

    move/from16 v1, v54

    if-eq v0, v1, :cond_10

    const/4 v15, 0x1

    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    move/from16 v0, v54

    move/from16 v1, v37

    if-eq v0, v1, :cond_10

    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    if-eqz v54, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->remove(I)V

    :cond_e
    if-eqz v37, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v37

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_f
    move/from16 v0, v37

    move-object/from16 v1, v41

    iput v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    :cond_10
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->clear()V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v54, v0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput v0, v1, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    :cond_11
    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/os/memory/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v54

    or-int v15, v15, v54

    goto/16 :goto_8

    :cond_12
    const/16 v37, 0x0

    goto :goto_9

    :cond_13
    const/16 v22, 0x0

    :goto_a
    move/from16 v0, v22

    if-ge v0, v7, :cond_18

    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    if-nez v41, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    if-nez v41, :cond_14

    const/4 v15, 0x1

    new-instance v41, Landroid/os/memory/RunningState$ProcessItem;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v54, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move/from16 v2, v54

    move-object/from16 v3, v55

    invoke-direct {v0, v1, v2, v3}, Landroid/os/memory/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v54, v0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->clear()V

    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/os/memory/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v54

    if-eqz v54, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v54

    if-nez v54, :cond_16

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v54, v0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput v0, v1, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput-boolean v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mInteresting:Z

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/memory/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v54, v0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mRunningSeq:I

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    iput-object v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_a

    :cond_17
    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput-boolean v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mInteresting:Z

    goto :goto_b

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v22, v8, -0x1

    :goto_c
    if-ltz v22, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mRunningSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v17, v0

    if-eqz v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/memory/RunningState$ProcessItem;

    if-nez v16, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/memory/RunningState$ProcessItem;

    :cond_19
    if-eqz v16, :cond_1a

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1a
    :goto_d
    add-int/lit8 v22, v22, -0x1

    goto :goto_c

    :cond_1b
    const/16 v54, 0x0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    iput-object v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mClient:Landroid/os/memory/RunningState$ProcessItem;

    goto :goto_d

    :cond_1c
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_d

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v22, 0x0

    :goto_e
    move/from16 v0, v22

    if-ge v0, v6, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mInteresting:Z

    move/from16 v54, v0

    if-eqz v54, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v54

    if-nez v54, :cond_1f

    :cond_1e
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v22, v22, -0x1

    add-int/lit8 v6, v6, -0x1

    :cond_1f
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/16 v22, 0x0

    :goto_f
    move/from16 v0, v22

    if-ge v0, v5, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v54, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move-object/from16 v2, v40

    move/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/memory/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v54

    or-int v15, v15, v54

    :cond_21
    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    :cond_22
    const/16 v53, 0x0

    const/16 v22, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/HashMap;

    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_23
    :goto_11
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_29

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/memory/RunningState$ProcessItem;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_26

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/memory/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    move-object/from16 v0, v36

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    if-nez v54, :cond_24

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->clear()V

    :cond_24
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v49

    :cond_25
    :goto_12
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_23

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/memory/RunningState$ServiceItem;

    move-object/from16 v0, v48

    iget v0, v0, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_25

    const/4 v15, 0x1

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    :cond_26
    const/4 v15, 0x1

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->remove()V

    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->size()I

    move-result v54

    if-nez v54, :cond_28

    if-nez v53, :cond_27

    new-instance v53, Ljava/util/ArrayList;

    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v54

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    move-object/from16 v0, v36

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    if-eqz v54, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_11

    :cond_29
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_10

    :cond_2a
    if-eqz v53, :cond_2b

    const/16 v22, 0x0

    :goto_13
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_2b

    move-object/from16 v0, v53

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/Integer;

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Integer;->intValue()I

    move-result v52

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v22, v22, 0x1

    goto :goto_13

    :cond_2b
    if-eqz v15, :cond_3c

    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    const/16 v22, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/util/HashMap;

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_15
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_2f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/memory/RunningState$ProcessItem;

    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mIsSystem:Z

    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mIsStarted:Z

    const-wide v54, 0x7fffffffffffffffL

    move-wide/from16 v0, v54

    move-object/from16 v2, v36

    iput-wide v0, v2, Landroid/os/memory/RunningState$ProcessItem;->mActiveSince:J

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_2c
    :goto_16
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_2e

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/memory/RunningState$ServiceItem;

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v54, v0

    if-eqz v54, :cond_2d

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v54, v0

    and-int/lit8 v54, v54, 0x1

    if-eqz v54, :cond_2d

    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mIsSystem:Z

    :cond_2d
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v54, v0

    if-eqz v54, :cond_2c

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v54, v0

    if-eqz v54, :cond_2c

    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mIsStarted:Z

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mActiveSince:J

    move-wide/from16 v54, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v56, v0

    cmp-long v54, v54, v56

    if-lez v54, :cond_2c

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v54, v0

    move-wide/from16 v0, v54

    move-object/from16 v2, v36

    iput-wide v0, v2, Landroid/os/memory/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_16

    :cond_2e
    move-object/from16 v0, v51

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    :cond_2f
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_14

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessComparator:Landroid/os/memory/RunningState$ServiceProcessComparator;

    move-object/from16 v54, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->clear()V

    const/16 v22, 0x0

    :goto_17
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_38

    move-object/from16 v0, v51

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/memory/RunningState$ProcessItem;

    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Landroid/os/memory/RunningState$BaseItem;->mNeedDivider:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/memory/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v36

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    if-lez v54, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    const/16 v25, 0x0

    const/16 v21, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_18
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_34

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/memory/RunningState$ServiceItem;

    move/from16 v0, v27

    move-object/from16 v1, v48

    iput-boolean v0, v1, Landroid/os/memory/RunningState$BaseItem;->mNeedDivider:Z

    const/16 v27, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    if-eqz v54, :cond_33

    if-eqz v25, :cond_32

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_32

    const/16 v21, 0x0

    :cond_32
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v25, v0

    goto :goto_18

    :cond_33
    const/16 v21, 0x0

    goto :goto_18

    :cond_34
    if-eqz v21, :cond_35

    if-eqz v25, :cond_35

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/memory/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Ljava/util/HashMap;->size()I

    move-result v55

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_37

    :cond_35
    new-instance v25, Landroid/os/memory/RunningState$MergedItem;

    invoke-direct/range {v25 .. v25}, Landroid/os/memory/RunningState$MergedItem;-><init>()V

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_19
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_36

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/memory/RunningState$ServiceItem;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/memory/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v25

    move-object/from16 v1, v48

    iput-object v0, v1, Landroid/os/memory/RunningState$ServiceItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    goto :goto_19

    :cond_36
    move-object/from16 v0, v36

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/memory/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->clear()V

    move/from16 v26, v18

    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    add-int/lit8 v54, v54, -0x1

    move/from16 v0, v26

    move/from16 v1, v54

    if-ge v0, v1, :cond_37

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/memory/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v26, v26, 0x1

    goto :goto_1a

    :cond_37
    const/16 v54, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/memory/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_17

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v22, 0x0

    :goto_1b
    move/from16 v0, v22

    if-ge v0, v6, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mClient:Landroid/os/memory/RunningState$ProcessItem;

    move-object/from16 v54, v0

    if-nez v54, :cond_3a

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->size()I

    move-result v54

    if-gtz v54, :cond_3a

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    if-nez v54, :cond_39

    new-instance v54, Landroid/os/memory/RunningState$MergedItem;

    invoke-direct/range {v54 .. v54}, Landroid/os/memory/RunningState$MergedItem;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    iput-object v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    iput-object v0, v1, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    :cond_39
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    move-object/from16 v0, v54

    move-object/from16 v1, p1

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/os/memory/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    const/16 v54, 0x0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v55, v0

    move-object/from16 v0, v31

    move/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    add-int/lit8 v22, v22, 0x1

    goto :goto_1b

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v55, v0

    monitor-enter v55

    :try_start_0
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/memory/RunningState;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/memory/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v55
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/16 v22, 0x0

    :goto_1c
    move/from16 v0, v22

    if-ge v0, v8, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_3f

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0x190

    move/from16 v0, v54

    move/from16 v1, v55

    if-lt v0, v1, :cond_3d

    add-int/lit8 v32, v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1d
    add-int/lit8 v22, v22, 0x1

    goto :goto_1c

    :catchall_0
    move-exception v54

    :try_start_1
    monitor-exit v55
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v54

    :cond_3d
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0xc8

    move/from16 v0, v54

    move/from16 v1, v55

    if-gt v0, v1, :cond_3e

    add-int/lit8 v33, v33, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_3e
    const-string v54, "RunningState"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "Unknown non-service process: "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, " #"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_3f
    add-int/lit8 v35, v35, 0x1

    goto :goto_1d

    :cond_40
    const-wide/16 v11, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v45, 0x0

    const/16 v28, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v38, v0

    const/16 v22, 0x0

    :goto_1e
    move/from16 v0, v22

    move/from16 v1, v34

    if-ge v0, v1, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/os/memory/RunningState$ProcessItem;

    move-object/from16 v0, v54

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    aput v54, v38, v22

    add-int/lit8 v22, v22, 0x1

    goto :goto_1e

    :cond_41
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v44

    const/4 v13, 0x0

    const/16 v22, 0x0

    move-object/from16 v29, v28

    :goto_1f
    :try_start_3
    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v54, v0

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    aget-wide v54, v44, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v56, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move-wide/from16 v2, v54

    move/from16 v4, v56

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/memory/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v54

    or-int v15, v15, v54

    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_42

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    move-wide/from16 v54, v0

    add-long v45, v45, v54

    move-object/from16 v28, v29

    :goto_20
    add-int/lit8 v22, v22, 0x1

    move-object/from16 v29, v28

    goto :goto_1f

    :cond_42
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0x190

    move/from16 v0, v54

    move/from16 v1, v55

    if-lt v0, v1, :cond_47

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    move-wide/from16 v54, v0

    add-long v11, v11, v54

    if-eqz v29, :cond_43

    new-instance v25, Landroid/os/memory/RunningState$MergedItem;

    invoke-direct/range {v25 .. v25}, Landroid/os/memory/RunningState$MergedItem;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    iput-object v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    iput-object v0, v1, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v28, v29

    :goto_21
    const/16 v54, 0x1

    :try_start_4
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/memory/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/memory/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_20

    :cond_43
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v54

    if-ge v13, v0, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_46

    :cond_44
    new-instance v28, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v14, 0x0

    :goto_22
    if-ge v14, v13, :cond_45

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    move-object/from16 v0, v28

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_22

    :cond_45
    new-instance v25, Landroid/os/memory/RunningState$MergedItem;

    invoke-direct/range {v25 .. v25}, Landroid/os/memory/RunningState$MergedItem;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    iput-object v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    iput-object v0, v1, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_21

    :catch_0
    move-exception v54

    :goto_23
    if-nez v28, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v54

    move/from16 v1, v32

    if-le v0, v1, :cond_49

    new-instance v28, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v14, 0x0

    :goto_24
    move/from16 v0, v32

    if-ge v14, v0, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    move-object/from16 v0, v28

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_24

    :cond_46
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v28, v29

    goto/16 :goto_21

    :cond_47
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0xc8

    move/from16 v0, v54

    move/from16 v1, v55

    if-gt v0, v1, :cond_4d

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    move-wide/from16 v54, v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    add-long v19, v19, v54

    move-object/from16 v28, v29

    goto/16 :goto_20

    :cond_48
    move-object/from16 v28, v29

    goto :goto_23

    :cond_49
    const/16 v22, 0x0

    :goto_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v0, v54

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/memory/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    add-int/lit8 v22, v22, 0x1

    goto :goto_25

    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v55, v0

    monitor-enter v55

    :try_start_8
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/os/memory/RunningState;->mNumBackgroundProcesses:I

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/os/memory/RunningState;->mNumForegroundProcesses:I

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/os/memory/RunningState;->mNumServiceProcesses:I

    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/os/memory/RunningState;->mBackgroundProcessMemory:J

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/os/memory/RunningState;->mForegroundProcessMemory:J

    move-wide/from16 v0, v45

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/os/memory/RunningState;->mServiceProcessMemory:J

    if-eqz v28, :cond_4b

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/os/memory/RunningState;->mWatchingBackgroundItems:Z

    move/from16 v54, v0

    if-eqz v54, :cond_4b

    const/4 v15, 0x1

    :cond_4b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/os/memory/RunningState;->mHaveData:Z

    move/from16 v54, v0

    if-nez v54, :cond_4c

    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/os/memory/RunningState;->mHaveData:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Object;->notifyAll()V

    :cond_4c
    monitor-exit v55

    return v15

    :catchall_1
    move-exception v54

    monitor-exit v55
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v54

    :catch_1
    move-exception v54

    move-object/from16 v28, v29

    goto/16 :goto_23

    :cond_4d
    move-object/from16 v28, v29

    goto/16 :goto_20
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCurrentItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$BaseItem;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/os/memory/RunningState;->mItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/os/memory/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasData()Z
    .locals 2

    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/os/memory/RunningState;->mHaveData:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method pause()V
    .locals 3

    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/os/memory/RunningState;->mResumed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/memory/RunningState;->mRefreshUiListener:Landroid/os/memory/RunningState$OnRefreshUiListener;

    iget-object v0, p0, Landroid/os/memory/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resume(Landroid/os/memory/RunningState$OnRefreshUiListener;)V
    .locals 3

    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/os/memory/RunningState;->mResumed:Z

    iput-object p1, p0, Landroid/os/memory/RunningState;->mRefreshUiListener:Landroid/os/memory/RunningState$OnRefreshUiListener;

    iget-object v0, p0, Landroid/os/memory/RunningState;->mInterestingConfigChanges:Landroid/os/memory/InterestingConfigChanges;

    iget-object v2, p0, Landroid/os/memory/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/memory/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/memory/RunningState;->mHaveData:Z

    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v0, p0, Landroid/os/memory/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 2

    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Landroid/os/memory/RunningState;->mWatchingBackgroundItems:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateNow()V
    .locals 3

    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method waitForData()V
    .locals 4

    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Landroid/os/memory/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
