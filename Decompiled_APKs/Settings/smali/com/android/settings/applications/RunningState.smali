.class public Lcom/android/settings/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningState$ServiceProcessComparator;,
        Lcom/android/settings/applications/RunningState$MergedItem;,
        Lcom/android/settings/applications/RunningState$ProcessItem;,
        Lcom/android/settings/applications/RunningState$ServiceItem;,
        Lcom/android/settings/applications/RunningState$BaseItem;,
        Lcom/android/settings/applications/RunningState$OnRefreshUiListener;,
        Lcom/android/settings/applications/RunningState$BackgroundHandler;,
        Lcom/android/settings/applications/RunningState$AppProcessInfo;
    }
.end annotation


# static fields
.field static final CONTENTS_UPDATE_DELAY:J = 0x7d0L

.field static final MAX_SERVICES:I = 0x64

.field static final MSG_REFRESH_UI:I = 0x3

.field static final MSG_RESET_CONTENTS:I = 0x1

.field static final MSG_UPDATE_CONTENTS:I = 0x2

.field static final MSG_UPDATE_TIME:I = 0x4

.field private static final TAG:Ljava/lang/String; = null

.field static final TIME_UPDATE_DELAY:J = 0x3e8L

.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Lcom/android/settings/applications/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$BaseItem;",
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
            "Lcom/android/settings/applications/RunningState$MergedItem;",
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
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mServiceSet:Lcom/android/settings/applications/HtcHideServiceSet;

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/RunningState;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 584
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/settings/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v0}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 118
    iput v2, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Lcom/android/settings/applications/RunningState$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$1;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    .line 585
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 586
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    .line 587
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    .line 588
    iput-boolean v2, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 589
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 590
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 591
    new-instance v0, Lcom/android/settings/applications/RunningState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/settings/applications/RunningState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    .line 594
    new-instance v0, Lcom/android/settings/applications/HtcHideServiceSet;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/HtcHideServiceSet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceSet:Lcom/android/settings/applications/HtcHideServiceSet;

    .line 595
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RunningState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/applications/RunningState;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/settings/applications/RunningState;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;
    .locals 2
    .parameter "context"

    .prologue
    .line 576
    sget-object v1, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 577
    :try_start_0
    sget-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    if-nez v0, :cond_0

    .line 578
    new-instance v0, Lcom/android/settings/applications/RunningState;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    .line 580
    :cond_0
    sget-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    monitor-exit v1

    return-object v0

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    const/4 v0, 0x1

    .line 647
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 657
    :cond_0
    :goto_0
    return v0

    .line 650
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

    .line 657
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "pm"
    .parameter "className"
    .parameter "item"

    .prologue
    .line 559
    if-eqz p2, :cond_2

    iget v2, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 561
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 562
    .local v0, label:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 572
    .end local v0           #label:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-object v0

    .line 567
    :cond_2
    move-object v0, p1

    .line 568
    .local v0, label:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 569
    .local v1, tail:I
    if-ltz v1, :cond_1

    .line 570
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 662
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 663
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 664
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 665
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 666
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 667
    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 58
    .parameter "context"
    .parameter "am"

    .prologue
    .line 670
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    .line 672
    .local v40, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v54, v0

    add-int/lit8 v54, v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    .line 674
    const/4 v15, 0x0

    .line 678
    .local v15, changed:Z
    const/16 v54, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v47

    .line 680
    .local v47, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v47, :cond_1

    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v9

    .line 681
    .local v9, NS:I
    :goto_0
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    if-ge v0, v9, :cond_4

    .line 682
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 686
    .local v48, si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v48

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v54, v0

    if-nez v54, :cond_2

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v54, v0

    if-nez v54, :cond_2

    .line 687
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 688
    add-int/lit8 v22, v22, -0x1

    .line 689
    add-int/lit8 v9, v9, -0x1

    .line 681
    :cond_0
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 680
    .end local v9           #NS:I
    .end local v22           #i:I
    .end local v48           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 694
    .restart local v9       #NS:I
    .restart local v22       #i:I
    .restart local v48       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v54, v0

    and-int/lit8 v54, v54, 0x8

    if-eqz v54, :cond_3

    .line 696
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 697
    add-int/lit8 v22, v22, -0x1

    .line 698
    add-int/lit8 v9, v9, -0x1

    .line 699
    goto :goto_2

    .line 703
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceSet:Lcom/android/settings/applications/HtcHideServiceSet;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Lcom/android/settings/applications/HtcHideServiceSet;->contains(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_0

    .line 704
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 705
    add-int/lit8 v22, v22, -0x1

    .line 706
    add-int/lit8 v9, v9, -0x1

    .line 707
    goto :goto_2

    .line 714
    .end local v48           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v42

    .line 716
    .local v42, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v42, :cond_5

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->size()I

    move-result v7

    .line 717
    .local v7, NP:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->clear()V

    .line 718
    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    if-ge v0, v7, :cond_6

    .line 719
    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 720
    .local v36, pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v55, v0

    new-instance v56, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    move-object/from16 v0, v56

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v54 .. v56}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 718
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 716
    .end local v7           #NP:I
    .end local v36           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 725
    .restart local v7       #NP:I
    :cond_6
    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v22

    if-ge v0, v9, :cond_8

    .line 726
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 727
    .restart local v48       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmp-long v54, v54, v56

    if-nez v54, :cond_7

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v54, v0

    if-lez v54, :cond_7

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 729
    .local v10, ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    if-eqz v10, :cond_7

    .line 730
    const/16 v54, 0x1

    move/from16 v0, v54

    iput-boolean v0, v10, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    .line 731
    move-object/from16 v0, v48

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v54, v0

    if-eqz v54, :cond_7

    .line 732
    const/16 v54, 0x1

    move/from16 v0, v54

    iput-boolean v0, v10, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    .line 725
    .end local v10           #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 739
    .end local v48           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_8
    const/16 v22, 0x0

    :goto_6
    move/from16 v0, v22

    if-ge v0, v9, :cond_14

    .line 740
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 747
    .restart local v48       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmp-long v54, v54, v56

    if-nez v54, :cond_c

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v54, v0

    if-lez v54, :cond_c

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 749
    .restart local v10       #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    if-eqz v10, :cond_c

    iget-boolean v0, v10, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    move/from16 v54, v0

    if-nez v54, :cond_c

    .line 755
    iget-object v0, v10, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0x12c

    move/from16 v0, v54

    move/from16 v1, v55

    if-ge v0, v1, :cond_c

    .line 759
    const/16 v50, 0x0

    .line 760
    .local v50, skip:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    iget-object v0, v10, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    check-cast v10, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 761
    .restart local v10       #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    :goto_7
    if-eqz v10, :cond_a

    .line 762
    iget-boolean v0, v10, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    move/from16 v54, v0

    if-nez v54, :cond_9

    iget-object v0, v10, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v54

    if-eqz v54, :cond_b

    .line 763
    :cond_9
    const/16 v50, 0x1

    .line 768
    :cond_a
    if-eqz v50, :cond_c

    .line 739
    .end local v10           #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    .end local v50           #skip:Z
    :goto_8
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_6

    .line 766
    .restart local v10       #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    .restart local v50       #skip:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    iget-object v0, v10, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    check-cast v10, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .restart local v10       #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    goto :goto_7

    .line 775
    .end local v10           #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    .end local v50           #skip:Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/HashMap;

    .line 776
    .local v43, procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    if-nez v43, :cond_d

    .line 777
    new-instance v43, Ljava/util/HashMap;

    .end local v43           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    invoke-direct/range {v43 .. v43}, Ljava/util/HashMap;-><init>()V

    .line 778
    .restart local v43       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 780
    :cond_d
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 781
    .local v41, proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v41, :cond_e

    .line 782
    const/4 v15, 0x1

    .line 783
    new-instance v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    .end local v41           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
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

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 784
    .restart local v41       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v54

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    :cond_e
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_12

    .line 788
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmp-long v54, v54, v56

    if-nez v54, :cond_13

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v37, v0

    .line 789
    .local v37, pid:I
    :goto_9
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    move/from16 v0, v37

    move/from16 v1, v54

    if-eq v0, v1, :cond_11

    .line 790
    const/4 v15, 0x1

    .line 791
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    move/from16 v0, v54

    move/from16 v1, v37

    if-eq v0, v1, :cond_11

    .line 792
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    if-eqz v54, :cond_f

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->remove(I)V

    .line 795
    :cond_f
    if-eqz v37, :cond_10

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v37

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 798
    :cond_10
    move/from16 v0, v37

    move-object/from16 v1, v41

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 801
    :cond_11
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->clear()V

    .line 802
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v54, v0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput v0, v1, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    .line 804
    .end local v37           #pid:I
    :cond_12
    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v54

    or-int v15, v15, v54

    goto/16 :goto_8

    .line 788
    :cond_13
    const/16 v37, 0x0

    goto :goto_9

    .line 809
    .end local v41           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v43           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .end local v48           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_14
    const/16 v22, 0x0

    :goto_a
    move/from16 v0, v22

    if-ge v0, v7, :cond_19

    .line 810
    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 811
    .restart local v36       #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 812
    .restart local v41       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v41, :cond_16

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 817
    .restart local v41       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v41, :cond_15

    .line 818
    const/4 v15, 0x1

    .line 819
    new-instance v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    .end local v41           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
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

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 820
    .restart local v41       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v54, v0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 823
    :cond_15
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->clear()V

    .line 826
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v54

    if-eqz v54, :cond_18

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v54

    if-nez v54, :cond_17

    .line 828
    const/4 v15, 0x1

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v54, v0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput v0, v1, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    .line 832
    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    .line 833
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 838
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v54, v0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    .line 839
    move-object/from16 v0, v36

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 809
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_a

    .line 835
    :cond_18
    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    goto :goto_b

    .line 844
    .end local v36           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v41           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 845
    .local v8, NRP:I
    const/16 v22, 0x0

    :goto_c
    move/from16 v0, v22

    if-ge v0, v8, :cond_1f

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 848
    .restart local v41       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v41, :cond_1b

    .line 845
    :cond_1a
    :goto_d
    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    .line 852
    :cond_1b
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_1e

    .line 853
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v17, v0

    .line 854
    .local v17, clientPid:I
    if-eqz v17, :cond_1d

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 856
    .local v16, client:Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v16, :cond_1c

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #client:Lcom/android/settings/applications/RunningState$ProcessItem;
    check-cast v16, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 859
    .restart local v16       #client:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_1c
    if-eqz v16, :cond_1a

    .line 860
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    .line 866
    .end local v16           #client:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_1d
    const/16 v54, 0x0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    goto :goto_d

    .line 869
    .end local v17           #clientPid:I
    :cond_1e
    const/4 v15, 0x1

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_d

    .line 875
    .end local v41           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 876
    .local v6, NHP:I
    const/16 v22, 0x0

    :goto_e
    move/from16 v0, v22

    if-ge v0, v6, :cond_22

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 878
    .restart local v41       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    move/from16 v54, v0

    if-eqz v54, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v54

    if-nez v54, :cond_21

    .line 879
    :cond_20
    const/4 v15, 0x1

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 881
    add-int/lit8 v22, v22, -0x1

    .line 882
    add-int/lit8 v6, v6, -0x1

    .line 876
    :cond_21
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 889
    .end local v41           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 890
    .local v5, NAP:I
    const/16 v22, 0x0

    :goto_f
    move/from16 v0, v22

    if-ge v0, v5, :cond_24

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 892
    .restart local v41       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_23

    .line 893
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v54, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move-object/from16 v2, v40

    move/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v54

    or-int v15, v15, v54

    .line 890
    :cond_23
    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    .line 898
    .end local v41           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_24
    const/16 v53, 0x0

    .line 899
    .local v53, uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v22, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_2c

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/HashMap;

    .line 901
    .restart local v43       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .line 902
    .local v39, pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_25
    :goto_11
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_2b

    .line 903
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 904
    .local v36, pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_28

    .line 905
    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 906
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    if-nez v54, :cond_26

    .line 909
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->clear()V

    .line 925
    :cond_26
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .line 926
    .local v49, sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ServiceItem;>;"
    :cond_27
    :goto_12
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_25

    .line 927
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 928
    .local v48, si:Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_27

    .line 929
    const/4 v15, 0x1

    .line 930
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 912
    .end local v48           #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    .end local v49           #sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ServiceItem;>;"
    :cond_28
    const/4 v15, 0x1

    .line 913
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->remove()V

    .line 914
    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->size()I

    move-result v54

    if-nez v54, :cond_2a

    .line 915
    if-nez v53, :cond_29

    .line 916
    new-instance v53, Ljava/util/ArrayList;

    .end local v53           #uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    .line 918
    .restart local v53       #uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v54

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    :cond_2a
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    if-eqz v54, :cond_25

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_11

    .line 899
    .end local v36           #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_2b
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_10

    .line 936
    .end local v39           #pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .end local v43           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_2c
    if-eqz v53, :cond_2d

    .line 937
    const/16 v22, 0x0

    :goto_13
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_2d

    .line 938
    move-object/from16 v0, v53

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/Integer;

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Integer;->intValue()I

    move-result v52

    .line 939
    .local v52, uid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 937
    add-int/lit8 v22, v22, 0x1

    goto :goto_13

    .line 943
    .end local v52           #uid:I
    :cond_2d
    if-eqz v15, :cond_3e

    .line 945
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    .line 946
    .local v51, sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    const/16 v22, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_32

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

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

    if-eqz v54, :cond_31

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 948
    .restart local v36       #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 949
    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 950
    const-wide v54, 0x7fffffffffffffffL

    move-wide/from16 v0, v54

    move-object/from16 v2, v36

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    .line 951
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_2e
    :goto_16
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_30

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 952
    .restart local v48       #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v54, v0

    if-eqz v54, :cond_2f

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v54, v0

    and-int/lit8 v54, v54, 0x1

    if-eqz v54, :cond_2f

    .line 955
    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 957
    :cond_2f
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v54, v0

    if-eqz v54, :cond_2e

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v54, v0

    if-eqz v54, :cond_2e

    .line 959
    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 960
    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    move-wide/from16 v54, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v56, v0

    cmp-long v54, v54, v56

    if-lez v54, :cond_2e

    .line 961
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v54, v0

    move-wide/from16 v0, v54

    move-object/from16 v2, v36

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_16

    .line 965
    .end local v48           #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_30
    move-object/from16 v0, v51

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 946
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v36           #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_31
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_14

    .line 969
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    move-object/from16 v54, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 971
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 972
    .local v30, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 973
    .local v31, newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->clear()V

    .line 974
    const/16 v22, 0x0

    :goto_17
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_3a

    .line 975
    move-object/from16 v0, v51

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 976
    .restart local v36       #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$BaseItem;->mNeedDivider:Z

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 980
    .local v18, firstProc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 982
    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    if-lez v54, :cond_33

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    :cond_33
    const/16 v25, 0x0

    .line 989
    .local v25, mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    const/16 v21, 0x0

    .line 990
    .local v21, haveAllMerged:Z
    const/16 v27, 0x0

    .line 991
    .local v27, needDivider:Z
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_36

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 992
    .restart local v48       #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    move/from16 v0, v27

    move-object/from16 v1, v48

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$BaseItem;->mNeedDivider:Z

    .line 993
    const/16 v27, 0x1

    .line 994
    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v54, v0

    if-eqz v54, :cond_35

    .line 996
    if-eqz v25, :cond_34

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_34

    .line 997
    const/16 v21, 0x0

    .line 999
    :cond_34
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v25, v0

    goto :goto_18

    .line 1001
    :cond_35
    const/16 v21, 0x0

    goto :goto_18

    .line 1005
    .end local v48           #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_36
    if-eqz v21, :cond_37

    if-eqz v25, :cond_37

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Ljava/util/HashMap;->size()I

    move-result v55

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_39

    .line 1008
    :cond_37
    new-instance v25, Lcom/android/settings/applications/RunningState$MergedItem;

    .end local v25           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    invoke-direct/range {v25 .. v25}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>()V

    .line 1009
    .restart local v25       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_19
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_38

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1010
    .restart local v48       #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    move-object/from16 v0, v25

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    goto :goto_19

    .line 1013
    .end local v48           #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_38
    move-object/from16 v0, v36

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1014
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->clear()V

    .line 1015
    move/from16 v26, v18

    .local v26, mpi:I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    add-int/lit8 v54, v54, -0x1

    move/from16 v0, v26

    move/from16 v1, v54

    if-ge v0, v1, :cond_39

    .line 1016
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1015
    add-int/lit8 v26, v26, 0x1

    goto :goto_1a

    .line 1020
    .end local v26           #mpi:I
    :cond_39
    const/16 v54, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1021
    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_17

    .line 1026
    .end local v18           #firstProc:I
    .end local v21           #haveAllMerged:Z
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v25           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v27           #needDivider:Z
    .end local v36           #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1027
    const/16 v22, 0x0

    :goto_1b
    move/from16 v0, v22

    if-ge v0, v6, :cond_3d

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1029
    .restart local v41       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v54, v0

    if-nez v54, :cond_3c

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->size()I

    move-result v54

    if-gtz v54, :cond_3c

    .line 1030
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v54, v0

    if-nez v54, :cond_3b

    .line 1031
    new-instance v54, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-direct/range {v54 .. v54}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1032
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1034
    :cond_3b
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    move-object/from16 v0, v54

    move-object/from16 v1, p1

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1035
    const/16 v54, 0x0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v55, v0

    move-object/from16 v0, v31

    move/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    :cond_3c
    add-int/lit8 v22, v22, 0x1

    goto :goto_1b

    .line 1040
    .end local v41           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v55, v0

    monitor-enter v55

    .line 1041
    :try_start_0
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 1042
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 1043
    monitor-exit v55
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    .end local v30           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .end local v31           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v51           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->clear()V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1050
    const/16 v32, 0x0

    .line 1051
    .local v32, numBackgroundProcesses:I
    const/16 v33, 0x0

    .line 1052
    .local v33, numForegroundProcesses:I
    const/16 v35, 0x0

    .line 1053
    .local v35, numServiceProcesses:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1054
    const/16 v22, 0x0

    :goto_1c
    move/from16 v0, v22

    if-ge v0, v8, :cond_42

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1056
    .restart local v41       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_41

    .line 1059
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0x190

    move/from16 v0, v54

    move/from16 v1, v55

    if-lt v0, v1, :cond_3f

    .line 1061
    add-int/lit8 v32, v32, 0x1

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    :goto_1d
    add-int/lit8 v22, v22, 0x1

    goto :goto_1c

    .line 1043
    .end local v32           #numBackgroundProcesses:I
    .end local v33           #numForegroundProcesses:I
    .end local v35           #numServiceProcesses:I
    .end local v41           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v30       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .restart local v31       #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v51       #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :catchall_0
    move-exception v54

    :try_start_1
    monitor-exit v55
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v54

    .line 1063
    .end local v30           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .end local v31           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v51           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .restart local v32       #numBackgroundProcesses:I
    .restart local v33       #numForegroundProcesses:I
    .restart local v35       #numServiceProcesses:I
    .restart local v41       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_3f
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0xc8

    move/from16 v0, v54

    move/from16 v1, v55

    if-gt v0, v1, :cond_40

    .line 1065
    add-int/lit8 v33, v33, 0x1

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 1068
    :cond_40
    const-string v54, "RunningState"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "Unknown non-service process: "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, " #"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 1072
    :cond_41
    add-int/lit8 v35, v35, 0x1

    goto :goto_1d

    .line 1076
    .end local v41           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_42
    const-wide/16 v11, 0x0

    .line 1077
    .local v11, backgroundProcessMemory:J
    const-wide/16 v19, 0x0

    .line 1078
    .local v19, foregroundProcessMemory:J
    const-wide/16 v45, 0x0

    .line 1079
    .local v45, serviceProcessMemory:J
    const/16 v28, 0x0

    .line 1081
    .local v28, newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v34

    .line 1082
    .local v34, numProc:I
    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v38, v0

    .line 1083
    .local v38, pids:[I
    const/16 v22, 0x0

    :goto_1e
    move/from16 v0, v22

    move/from16 v1, v34

    if-ge v0, v1, :cond_43

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v54

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    aput v54, v38, v22

    .line 1083
    add-int/lit8 v22, v22, 0x1

    goto :goto_1e

    .line 1086
    :cond_43
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v44

    .line 1088
    .local v44, pss:[J
    const/4 v13, 0x0

    .line 1089
    .local v13, bgIndex:I
    const/16 v22, 0x0

    move-object/from16 v29, v28

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local v29, newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_1f
    :try_start_3
    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v54, v0

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_4a

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1091
    .restart local v41       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    aget-wide v54, v44, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v56, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move-wide/from16 v2, v54

    move/from16 v4, v56

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v54

    or-int v15, v15, v54

    .line 1092
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_44

    .line 1093
    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    move-wide/from16 v54, v0

    add-long v45, v45, v54

    move-object/from16 v28, v29

    .line 1089
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_20
    add-int/lit8 v22, v22, 0x1

    move-object/from16 v29, v28

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto :goto_1f

    .line 1094
    :cond_44
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0x190

    move/from16 v0, v54

    move/from16 v1, v55

    if-lt v0, v1, :cond_49

    .line 1096
    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    move-wide/from16 v54, v0

    add-long v11, v11, v54

    .line 1098
    if-eqz v29, :cond_45

    .line 1099
    new-instance v25, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-direct/range {v25 .. v25}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1100
    .restart local v25       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1101
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v28, v29

    .line 1116
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_21
    const/16 v54, 0x1

    :try_start_4
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1117
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1118
    add-int/lit8 v13, v13, 0x1

    .line 1119
    goto :goto_20

    .line 1103
    .end local v25           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_45
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v54

    if-ge v13, v0, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_48

    .line 1105
    :cond_46
    new-instance v28, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1106
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/4 v14, 0x0

    .local v14, bgi:I
    :goto_22
    if-ge v14, v13, :cond_47

    .line 1107
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    move-object/from16 v0, v28

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    add-int/lit8 v14, v14, 0x1

    goto :goto_22

    .line 1109
    :cond_47
    new-instance v25, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-direct/range {v25 .. v25}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1110
    .restart local v25       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1111
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_21

    .line 1124
    .end local v13           #bgIndex:I
    .end local v14           #bgi:I
    .end local v25           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v34           #numProc:I
    .end local v38           #pids:[I
    .end local v41           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v44           #pss:[J
    :catch_0
    move-exception v54

    .line 1127
    :goto_23
    if-nez v28, :cond_4b

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v54

    move/from16 v1, v32

    if-le v0, v1, :cond_4b

    .line 1130
    new-instance v28, Ljava/util/ArrayList;

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1131
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/4 v14, 0x0

    .restart local v14       #bgi:I
    :goto_24
    move/from16 v0, v32

    if-ge v14, v0, :cond_4b

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    move-object/from16 v0, v28

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    add-int/lit8 v14, v14, 0x1

    goto :goto_24

    .line 1113
    .end local v14           #bgi:I
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v13       #bgIndex:I
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v34       #numProc:I
    .restart local v38       #pids:[I
    .restart local v41       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v44       #pss:[J
    :cond_48
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/settings/applications/RunningState$MergedItem;

    .restart local v25       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v28, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_21

    .line 1119
    .end local v25           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_49
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0xc8

    move/from16 v0, v54

    move/from16 v1, v55

    if-gt v0, v1, :cond_4f

    .line 1121
    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    move-wide/from16 v54, v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    add-long v19, v19, v54

    move-object/from16 v28, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_20

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v41           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_4a
    move-object/from16 v28, v29

    .line 1125
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto :goto_23

    .line 1137
    .end local v13           #bgIndex:I
    .end local v34           #numProc:I
    .end local v38           #pids:[I
    .end local v44           #pss:[J
    :cond_4b
    const/16 v22, 0x0

    :goto_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_4c

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v54

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1137
    add-int/lit8 v22, v22, 0x1

    goto :goto_25

    .line 1141
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v55, v0

    monitor-enter v55

    .line 1142
    :try_start_8
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    .line 1143
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    .line 1144
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    .line 1145
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    .line 1146
    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    .line 1147
    move-wide/from16 v0, v45

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    .line 1148
    if-eqz v28, :cond_4d

    .line 1149
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1150
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    move/from16 v54, v0

    if-eqz v54, :cond_4d

    .line 1151
    const/4 v15, 0x1

    .line 1154
    :cond_4d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    move/from16 v54, v0

    if-nez v54, :cond_4e

    .line 1155
    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Object;->notifyAll()V

    .line 1158
    :cond_4e
    monitor-exit v55

    .line 1160
    return v15

    .line 1158
    :catchall_1
    move-exception v54

    monitor-exit v55
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v54

    .line 1124
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v13       #bgIndex:I
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v34       #numProc:I
    .restart local v38       #pids:[I
    .restart local v44       #pss:[J
    :catch_1
    move-exception v54

    move-object/from16 v28, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_23

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v41       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_4f
    move-object/from16 v28, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
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
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1182
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1183
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1184
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
            "Lcom/android/settings/applications/RunningState$BaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1164
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1165
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1166
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
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1176
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1177
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasData()Z
    .locals 2

    .prologue
    .line 622
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 623
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    monitor-exit v1

    return v0

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method pause()V
    .locals 3

    .prologue
    .line 639
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 640
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 642
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 643
    monitor-exit v1

    .line 644
    return-void

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 598
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 599
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 600
    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 601
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 603
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 604
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 605
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 611
    monitor-exit v1

    .line 612
    return-void

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 2
    .parameter "watching"

    .prologue
    .line 1170
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1171
    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    .line 1172
    monitor-exit v1

    .line 1173
    return-void

    .line 1172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateNow()V
    .locals 3

    .prologue
    .line 615
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 617
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 618
    monitor-exit v1

    .line 619
    return-void

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method waitForData()V
    .locals 4

    .prologue
    .line 628
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 629
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 631
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 632
    :catch_0
    move-exception v0

    goto :goto_0

    .line 635
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 636
    return-void

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
