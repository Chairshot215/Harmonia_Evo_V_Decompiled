.class public Lcom/htc/Sync3DWidget/Sync1x1Widget;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "Sync1x1Widget.java"

# interfaces
.implements Lcom/htc/Sync3DWidget/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/Sync3DWidget/Sync1x1Widget$SyncClickListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MESSAGE_DELAYED_RESUME:I = 0x2135

.field private static final MESSAGE_ON_CONFIG_CHANGE:I = 0x2136

.field private static final MESSAGE_UPDATE_TURNING:I = 0x2134

.field private static final SCENE_CHILD_VALUE:[Ljava/lang/String;

.field private static sLandScenePath:Ljava/lang/String;

.field private static sPortScenePath:Ljava/lang/String;


# instance fields
.field private mAccounts:[Landroid/accounts/Account;

.field private mActive:Z

.field private mDataSetupAlready:Z

.field private mFxScene:Lcom/htc/fusion/fx/FxScene;

.field private mHostContext:Landroid/content/Context;

.field private mInvisibleAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSynching:Z

.field protected mLandscapeScene:Lcom/htc/fusion/fx/FxScene;

.field private mLoadView:Z

.field protected mProtraitScene:Lcom/htc/fusion/fx/FxScene;

.field private mResolution:Ljava/lang/String;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private mSyncBtnListener:Lcom/htc/Sync3DWidget/Sync1x1Widget$SyncClickListener;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private mTitleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mWidgetContext:Landroid/content/Context;

.field private mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field private mWorkerCallback:Landroid/os/Handler$Callback;

.field private mbutton:Lcom/htc/fusion/fx/controls/FxButton;

.field private mbuttonAni:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const-class v0, Lcom/htc/Sync3DWidget/Sync1x1Widget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->LOG_TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "textlabel.Settings"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "timeline.settings_1x1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "button.settings_section"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->SCENE_CHILD_VALUE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mIsSynching:Z

    .line 55
    iput-boolean v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mDataSetupAlready:Z

    .line 56
    iput-boolean v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mActive:Z

    .line 58
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mInvisibleAdapters:Ljava/util/ArrayList;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mAccounts:[Landroid/accounts/Account;

    .line 61
    new-instance v0, Lcom/htc/Sync3DWidget/Sync1x1Widget$1;

    invoke-direct {v0, p0}, Lcom/htc/Sync3DWidget/Sync1x1Widget$1;-><init>(Lcom/htc/Sync3DWidget/Sync1x1Widget;)V

    iput-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mLoadView:Z

    .line 141
    new-instance v0, Lcom/htc/Sync3DWidget/Sync1x1Widget$2;

    invoke-direct {v0, p0}, Lcom/htc/Sync3DWidget/Sync1x1Widget$2;-><init>(Lcom/htc/Sync3DWidget/Sync1x1Widget;)V

    iput-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWorkerCallback:Landroid/os/Handler$Callback;

    .line 243
    return-void
.end method

.method private SyncCheckedAuthorityForAllAccount([Landroid/accounts/Account;)V
    .locals 18
    .parameter "accounts"

    .prologue
    .line 316
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 318
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v12

    .line 319
    .local v12, syncAdapters:[Landroid/content/SyncAdapterType;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 323
    .local v2, accountTypeToAuthorities:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    .local v6, i:I
    array-length v10, v12

    .local v10, n:I
    :goto_0
    if-ge v6, v10, :cond_2

    .line 324
    aget-object v11, v12, v6

    .line 327
    .local v11, sa:Landroid/content/SyncAdapterType;
    invoke-virtual {v11}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 328
    iget-object v15, v11, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 329
    .local v3, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 330
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .restart local v3       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v15, v11, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_0
    iget-object v15, v11, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .end local v3           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 337
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mInvisibleAdapters:Ljava/util/ArrayList;

    iget-object v0, v11, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 341
    .end local v11           #sa:Landroid/content/SyncAdapterType;
    :cond_2
    sget-object v15, Lcom/htc/Sync3DWidget/Sync1x1Widget;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SyncCheckedAuthorityForAllAccount accounts.length="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v6, 0x0

    move-object/from16 v0, p1

    array-length v10, v0

    :goto_2
    if-ge v6, v10, :cond_6

    .line 344
    aget-object v1, p1, v6

    .line 345
    .local v1, account:Landroid/accounts/Account;
    iget-object v15, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 346
    .restart local v3       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    .line 349
    const/4 v8, 0x0

    .local v8, j:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, m:I
    :goto_3
    if-ge v8, v9, :cond_4

    .line 350
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 352
    .local v4, authority:Ljava/lang/String;
    invoke-static {v1, v4}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v14

    .line 353
    .local v14, syncState:I
    invoke-static {v1, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    .line 356
    .local v13, syncEnabled:Z
    if-lez v14, :cond_3

    const/4 v15, 0x1

    if-ne v13, v15, :cond_3

    .line 357
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 358
    .local v5, extras:Landroid/os/Bundle;
    const-string v15, "force"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 359
    invoke-static {v1, v4, v5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 349
    .end local v5           #extras:Landroid/os/Bundle;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 363
    .end local v4           #authority:Ljava/lang/String;
    .end local v8           #j:I
    .end local v9           #m:I
    .end local v13           #syncEnabled:Z
    .end local v14           #syncState:I
    :cond_4
    if-eqz v1, :cond_5

    .line 366
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 368
    .restart local v4       #authority:Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 369
    .restart local v5       #extras:Landroid/os/Bundle;
    const-string v15, "force"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 370
    invoke-static {v1, v4, v5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    .line 343
    .end local v4           #authority:Ljava/lang/String;
    .end local v5           #extras:Landroid/os/Bundle;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 374
    .end local v1           #account:Landroid/accounts/Account;
    .end local v3           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/Sync3DWidget/Sync1x1Widget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->determineUpdateStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/Sync3DWidget/Sync1x1Widget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mIsSynching:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/Sync3DWidget/Sync1x1Widget;)[Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mAccounts:[Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/Sync3DWidget/Sync1x1Widget;[Landroid/accounts/Account;)[Landroid/accounts/Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mAccounts:[Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/Sync3DWidget/Sync1x1Widget;[Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->SyncCheckedAuthorityForAllAccount([Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/Sync3DWidget/Sync1x1Widget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->sendUpdateTurningReqToUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/Sync3DWidget/Sync1x1Widget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/Sync3DWidget/Sync1x1Widget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mActive:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/Sync3DWidget/Sync1x1Widget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->releaseData()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/Sync3DWidget/Sync1x1Widget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWidgetContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/Sync3DWidget/Sync1x1Widget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mLoadView:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/Sync3DWidget/Sync1x1Widget;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->setupUIVars(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/Sync3DWidget/Sync1x1Widget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->updateTurningAccordingToUpdateStatus()V

    return-void
.end method

.method private cleanUpDataVars()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 237
    sget-object v0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removed statusChangeListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput-object v3, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mDataSetupAlready:Z

    .line 240
    iput-object v3, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 241
    return-void
.end method

.method private determineUpdateStatus()V
    .locals 4

    .prologue
    .line 265
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v0

    .line 267
    .local v0, activeSynch:Landroid/content/SyncInfo;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mIsSynching:Z

    .line 268
    sget-object v1, Lcom/htc/Sync3DWidget/Sync1x1Widget;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "david activeSynch is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mIsSynching:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-boolean v1, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mActive:Z

    if-eqz v1, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->sendUpdateTurningReqToUiThread()V

    .line 272
    :cond_0
    return-void

    .line 267
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private preloadScene()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 103
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mResolution:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/htc/Sync3DWidget/SyncUtilities;->getWidgetScenePath(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->sPortScenePath:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mResolution:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1, v3}, Lcom/htc/Sync3DWidget/SyncUtilities;->getWidgetScenePath(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->sLandScenePath:Ljava/lang/String;

    .line 109
    sget-object v0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->sPortScenePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    sget-object v1, Lcom/htc/Sync3DWidget/Sync1x1Widget;->sPortScenePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mProtraitScene:Lcom/htc/fusion/fx/FxScene;

    .line 111
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mProtraitScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mProtraitScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 115
    :cond_0
    sget-object v0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->sLandScenePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    sget-object v1, Lcom/htc/Sync3DWidget/Sync1x1Widget;->sLandScenePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mLandscapeScene:Lcom/htc/fusion/fx/FxScene;

    .line 117
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mLandscapeScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mLandscapeScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 121
    :cond_1
    return-void
.end method

.method private releaseData()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mbuttonAni:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 275
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mbutton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 276
    return-void
.end method

.method private sendUpdateTurningReqToUiThread()V
    .locals 2

    .prologue
    const/16 v1, 0x2134

    .line 290
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 293
    :cond_0
    return-void
.end method

.method private setupDataVars()V
    .locals 3

    .prologue
    .line 225
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registered statusChangeListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mDataSetupAlready:Z

    .line 234
    return-void
.end method

.method private setupUIVars(I)Z
    .locals 7
    .parameter "orin"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    sget-object v5, Lcom/htc/Sync3DWidget/Sync1x1Widget;->sPortScenePath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/htc/Sync3DWidget/Sync1x1Widget;->sLandScenePath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 180
    :cond_0
    sget-object v4, Lcom/htc/Sync3DWidget/Sync1x1Widget;->LOG_TAG:Ljava/lang/String;

    const-string v5, "no scene path"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    return v3

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 186
    iget-object v5, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v5, :cond_2

    .line 187
    sget-object v4, Lcom/htc/Sync3DWidget/Sync1x1Widget;->LOG_TAG:Ljava/lang/String;

    const-string v5, "scene is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_2
    iget-object v5, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 193
    iget-object v5, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    sget-object v6, Lcom/htc/Sync3DWidget/Sync1x1Widget;->SCENE_CHILD_VALUE:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    .line 194
    .local v2, xObj:[Lcom/htc/fusion/fx/FxObject;
    if-eqz v2, :cond_3

    array-length v5, v2

    sget-object v6, Lcom/htc/Sync3DWidget/Sync1x1Widget;->SCENE_CHILD_VALUE:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_4

    .line 195
    :cond_3
    sget-object v4, Lcom/htc/Sync3DWidget/Sync1x1Widget;->LOG_TAG:Ljava/lang/String;

    const-string v5, "null: scene child"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_4
    array-length v1, v2

    .line 200
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_6

    .line 201
    aget-object v5, v2, v0

    if-nez v5, :cond_5

    .line 202
    sget-object v4, Lcom/htc/Sync3DWidget/Sync1x1Widget;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scene child null:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 207
    :cond_6
    aget-object v3, v2, v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mTitleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 208
    aget-object v3, v2, v4

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mbuttonAni:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 209
    const/4 v3, 0x2

    aget-object v3, v2, v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v3, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mbutton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 211
    iget-object v3, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mTitleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v5, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWidgetContext:Landroid/content/Context;

    const v6, 0x7f040005

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mbuttonAni:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "off"

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mbutton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mSyncBtnListener:Lcom/htc/Sync3DWidget/Sync1x1Widget$SyncClickListener;

    invoke-interface {v3, v5}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    move v3, v4

    .line 217
    goto/16 :goto_0
.end method

.method private updateTurningAccordingToUpdateStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 296
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mbuttonAni:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_1

    .line 297
    sget-object v0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updating turning"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-boolean v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mIsSynching:Z

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mbuttonAni:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mbuttonAni:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "on"

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 304
    sget-object v0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start animation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mbuttonAni:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mbuttonAni:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 309
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mbuttonAni:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 310
    sget-object v0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "stop animation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 3

    .prologue
    .line 378
    const/4 v1, 0x0

    .line 380
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    iget-object v2, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWidgetContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 382
    .local v0, orien:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 383
    iget-object v1, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mLandscapeScene:Lcom/htc/fusion/fx/FxScene;

    .line 387
    :goto_0
    return-object v1

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mProtraitScene:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "config"

    .prologue
    const/16 v3, 0x2136

    .line 281
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 282
    sget-object v0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged config.orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 287
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWidgetContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mHostContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWorkerCallback:Landroid/os/Handler$Callback;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 91
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWidgetContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/Sync3DWidget/SyncUtilities;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mResolution:Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->preloadScene()V

    .line 94
    new-instance v0, Lcom/htc/Sync3DWidget/Sync1x1Widget$SyncClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/Sync3DWidget/Sync1x1Widget$SyncClickListener;-><init>(Lcom/htc/Sync3DWidget/Sync1x1Widget;Lcom/htc/Sync3DWidget/Sync1x1Widget$1;)V

    iput-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mSyncBtnListener:Lcom/htc/Sync3DWidget/Sync1x1Widget$SyncClickListener;

    .line 95
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWidgetContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->setupUIVars(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mLoadView:Z

    .line 96
    iget-boolean v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mDataSetupAlready:Z

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->setupDataVars()V

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mActive:Z

    .line 100
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mLoadView:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->releaseData()V

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->cleanUpDataVars()V

    .line 130
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 131
    return-void
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 392
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 401
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onHostMessage(Landroid/os/Message;)V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 394
    :pswitch_0
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x2136

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onPause()V

    .line 137
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x2135

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 138
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mbuttonAni:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mActive:Z

    .line 140
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 172
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    .line 174
    iget-boolean v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mLoadView:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x2135

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 177
    :cond_0
    return-void
.end method
