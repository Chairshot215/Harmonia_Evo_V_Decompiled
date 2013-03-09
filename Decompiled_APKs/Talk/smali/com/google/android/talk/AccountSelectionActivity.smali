.class public Lcom/google/android/talk/AccountSelectionActivity;
.super Landroid/app/ListActivity;
.source "AccountSelectionActivity.java"

# interfaces
.implements Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;
.implements Lcom/google/android/talk/TalkApp$AccountListChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;,
        Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;,
        Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;
    }
.end annotation


# instance fields
.field private mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

.field private mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

.field private mAddingAccount:Z

.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mConnectionListener:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

.field private mConnectionRetry:I

.field private mErrorMessage:Ljava/lang/String;

.field private mErrorToast:Landroid/widget/Toast;

.field private final mHandler:Landroid/os/Handler;

.field private mImSessionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gtalkservice/IImSession;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressText:Landroid/widget/TextView;

.field private mService:Lcom/google/android/gtalkservice/IGTalkService;

.field private mSessionDispatchWindowOpen:Z

.field private mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mImSessionList:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Lcom/google/android/talk/AccountSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/AccountSelectionActivity$1;-><init>(Lcom/google/android/talk/AccountSelectionActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mHandler:Landroid/os/Handler;

    .line 649
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/AccountSelectionActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/talk/AccountSelectionActivity;->signIn(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/AccountSelectionActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/talk/AccountSelectionActivity;->signOut(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/talk/AccountSelectionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->hideNetworkError()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/gtalkservice/IGTalkService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/talk/AccountSelectionActivity;Lcom/google/android/gtalkservice/IGTalkService;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/talk/AccountSelectionActivity;->serviceStateChanged(Lcom/google/android/gtalkservice/IGTalkService;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/talk/AccountSelectionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->registerForConnectionStateChanges()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/talk/AccountSelectionActivity;Lcom/google/android/talk/TalkApp$AccountInfo;)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/talk/AccountSelectionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mStopped:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/talk/AccountSelectionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mStopped:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/talk/AccountSelectionActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/AccountListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/talk/AccountSelectionActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/talk/AccountSelectionActivity;->showNetworkError(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/talk/AccountSelectionActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/talk/AccountSelectionActivity;->displayPendingConnectMode(Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/google/android/talk/AccountSelectionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method private clearAccountsLoading()V
    .locals 4

    .prologue
    .line 404
    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    if-eqz v3, :cond_2

    .line 405
    const/4 v1, 0x0

    .line 406
    .local v1, changed:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {v3}, Lcom/google/android/talk/AccountListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 407
    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {v3, v2}, Lcom/google/android/talk/AccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 408
    .local v0, accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-boolean v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->loading:Z

    if-eqz v3, :cond_0

    .line 409
    const/4 v1, 0x1

    .line 410
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->loading:Z

    .line 406
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    .end local v0           #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    :cond_1
    if-eqz v1, :cond_2

    .line 414
    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {v3}, Lcom/google/android/talk/AccountListAdapter;->notifyDataSetChanged()V

    .line 417
    .end local v1           #changed:Z
    .end local v2           #i:I
    :cond_2
    return-void
.end method

.method private completeSetupWithAccounts(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity;->mHandler:Landroid/os/Handler;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/AccountListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/content/ContentResolver;Lcom/google/android/talk/TalkApp;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    .line 395
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/AccountSelectionActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 400
    :goto_0
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->clearAccountsLoading()V

    .line 401
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {v0}, Lcom/google/android/talk/AccountListAdapter;->clear()V

    .line 398
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/AccountListAdapter;->addAll(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private displayAccounts()V
    .locals 3

    .prologue
    .line 869
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->hideMessage()V

    .line 872
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getAccountList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 873
    .local v0, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    invoke-direct {p0, v0}, Lcom/google/android/talk/AccountSelectionActivity;->completeSetupWithAccounts(Ljava/util/List;)V

    .line 874
    new-instance v1, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;

    invoke-direct {v1, p0, v0}, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;-><init>(Lcom/google/android/talk/AccountSelectionActivity;Ljava/util/List;)V

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/ContentResolver;

    invoke-virtual {v1, v2}, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 875
    return-void
.end method

.method private displayLoadingAccountsMode()V
    .locals 2

    .prologue
    .line 591
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    const-string v0, "displayLoadingAccountsMode"

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mProgressText:Landroid/widget/TextView;

    const v1, 0x7f0c00a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 595
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mProgressText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 596
    return-void
.end method

.method private displayPendingConnectMode(Z)V
    .locals 2
    .parameter "noNetwork"

    .prologue
    .line 638
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayPendingConnectMode: showProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 642
    :cond_0
    if-eqz p1, :cond_2

    .line 643
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mProgressText:Landroid/widget/TextView;

    const v1, 0x7f0c0062

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 647
    :goto_1
    return-void

    .line 639
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 645
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mProgressText:Landroid/widget/TextView;

    const v1, 0x7f0c0061

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private dp2Pixels(I)I
    .locals 3
    .parameter "dip"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 140
    .local v0, scale:F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private hideMessage()V
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mProgressText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    return-void
.end method

.method private hideNetworkError()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mErrorToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mErrorToast:Landroid/widget/Toast;

    .line 588
    :cond_0
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 98
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AccountSelectionActivity] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private registerForAccountListChanged()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p0}, Lcom/google/android/talk/TalkApp;->addAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 322
    return-void
.end method

.method private registerForConnectionStateChanges()V
    .locals 11

    .prologue
    .line 792
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 793
    const-string v7, "registerForConnectionStateChanges"

    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 795
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 844
    :cond_1
    :goto_0
    return-void

    .line 799
    :cond_2
    iget-object v7, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v7}, Lcom/google/android/talk/TalkApp;->getAccountList()Ljava/util/ArrayList;

    move-result-object v1

    .line 800
    .local v1, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    const/4 v5, 0x0

    .line 801
    .local v5, retry:Z
    monitor-enter v1

    .line 802
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 803
    .local v4, len:I
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 804
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerForConnectionStateChanges account cnt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 806
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_9

    .line 807
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 808
    .local v0, accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-object v7, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    iget-wide v8, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v7, v8, v9}, Lcom/google/android/talk/TalkApp;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 809
    .local v6, session:Lcom/google/android/gtalkservice/IImSession;
    if-eqz v6, :cond_7

    .line 811
    :try_start_1
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 812
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerForConnectionStateChanges account: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 814
    :cond_4
    iget-object v7, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionListener:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    if-nez v7, :cond_5

    .line 815
    new-instance v7, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    invoke-direct {v7, p0}, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;-><init>(Lcom/google/android/talk/AccountSelectionActivity;)V

    iput-object v7, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionListener:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    .line 817
    :cond_5
    iget-object v7, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionListener:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    invoke-interface {v6, v7}, Lcom/google/android/gtalkservice/IImSession;->addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 818
    iget-object v7, p0, Lcom/google/android/talk/AccountSelectionActivity;->mImSessionList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 819
    iget-object v7, p0, Lcom/google/android/talk/AccountSelectionActivity;->mImSessionList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 806
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 821
    :catch_0
    move-exception v2

    .line 822
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "talk"

    const-string v8, "registerForConnectionStateChanges caught "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 836
    .end local v0           #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #i:I
    .end local v4           #len:I
    .end local v6           #session:Lcom/google/android/gtalkservice/IImSession;
    :catchall_0
    move-exception v7

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 825
    .restart local v0       #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    .restart local v3       #i:I
    .restart local v4       #len:I
    .restart local v6       #session:Lcom/google/android/gtalkservice/IImSession;
    :cond_7
    :try_start_3
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 826
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerForConnectionStateChanges session null for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " account id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 832
    :cond_8
    const/4 v5, 0x1

    goto :goto_2

    .line 836
    .end local v0           #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v6           #session:Lcom/google/android/gtalkservice/IImSession;
    :cond_9
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 837
    if-eqz v5, :cond_1

    iget v7, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionRetry:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionRetry:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_1

    .line 838
    iget-object v7, p0, Lcom/google/android/talk/AccountSelectionActivity;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/talk/AccountSelectionActivity$4;

    invoke-direct {v8, p0}, Lcom/google/android/talk/AccountSelectionActivity$4;-><init>(Lcom/google/android/talk/AccountSelectionActivity;)V

    const-wide/16 v9, 0xbb8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private registerForServiceStateChanged()V
    .locals 3

    .prologue
    .line 750
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    const-string v0, "registerForServiceStateChanged"

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 753
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mSessionDispatchWindowOpen:Z

    .line 754
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/talk/AccountSelectionActivity$3;

    invoke-direct {v2, p0}, Lcom/google/android/talk/AccountSelectionActivity$3;-><init>(Lcom/google/android/talk/AccountSelectionActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->addServiceAvailableCallback(Landroid/os/Handler;Lcom/google/android/talk/ServiceAvailableRunnable;)V

    .line 760
    return-void
.end method

.method private serviceStateChanged(Lcom/google/android/gtalkservice/IGTalkService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 847
    iput-object p1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 848
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serviceStateChanged service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSessionDispatchWindowOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mSessionDispatchWindowOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 853
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mSessionDispatchWindowOpen:Z

    if-nez v0, :cond_1

    .line 866
    :goto_0
    return-void

    .line 857
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    if-eqz v0, :cond_2

    .line 858
    const-string v0, "service connected"

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 859
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->displayAccounts()V

    .line 860
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->unregisterAllSessions()V

    .line 861
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mImSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 862
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->registerForConnectionStateChanges()V

    goto :goto_0

    .line 864
    :cond_2
    const-string v0, "service disconnected"

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showNetworkError(I)V
    .locals 2
    .parameter "stringRes"

    .prologue
    const/4 v1, 0x0

    .line 628
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mErrorToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 629
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mErrorToast:Landroid/widget/Toast;

    .line 634
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 635
    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mErrorToast:Landroid/widget/Toast;

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0
.end method

.method private signIn(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    .line 523
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {v1}, Lcom/google/android/talk/AccountListAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/talk/AccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/TalkApp$AccountInfo;

    iput-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 528
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemClick: mAccountInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v2}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 532
    :cond_2
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 535
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-static {v1, p0}, Lcom/google/android/talk/AccountLoginUtils;->setActiveAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/app/Activity;)V

    .line 539
    :cond_3
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/google/android/talk/ConnectionStateOnlineReceiver;->markAccountNotified(Landroid/content/Context;Ljava/lang/String;)V

    .line 541
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/talk/AccountSelectionActivity;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    invoke-static {v1, v2}, Lcom/google/android/talk/AccountLoginUtils;->isSignedIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;)Z

    move-result v0

    .line 543
    .local v0, alreadySignedIn:Z
    if-eqz v0, :cond_4

    .line 544
    iput-boolean v5, p0, Lcom/google/android/talk/AccountSelectionActivity;->mStopped:Z

    .line 545
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-static {v1, p0}, Lcom/google/android/talk/AccountSelectionActivity;->startBuddyListComboActivity(Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/app/Activity;)V

    goto :goto_0

    .line 551
    :cond_4
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iput-boolean v5, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->loading:Z

    .line 552
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {v1}, Lcom/google/android/talk/AccountListAdapter;->notifyDataSetChanged()V

    .line 554
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v2, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/talk/TalkApp;->setCurrentAccount(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 556
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/talk/AccountSelectionActivity;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    invoke-static {v1, v2, p0}, Lcom/google/android/talk/AccountLoginUtils;->signIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;)Z

    goto :goto_0
.end method

.method private signOut(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 496
    :try_start_0
    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {v3, p1}, Lcom/google/android/talk/AccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/talk/TalkApp$AccountInfo;

    iput-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 497
    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 498
    :cond_0
    const-string v3, "signOut failed"

    invoke-static {v3}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 516
    :cond_1
    :goto_0
    return-void

    .line 501
    :cond_2
    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v4, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v4, v4, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/talk/TalkApp;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v2

    .line 502
    .local v2, session:Lcom/google/android/gtalkservice/IImSession;
    if-eqz v2, :cond_1

    .line 503
    invoke-interface {v2}, Lcom/google/android/gtalkservice/IImSession;->logout()V

    .line 507
    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v3}, Lcom/google/android/talk/TalkApp;->getActiveAccount()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    .line 508
    .local v0, activeAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iget-wide v5, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 509
    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v4, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-static {v3, v4}, Lcom/google/android/talk/AccountLoginUtils;->setInactiveAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Lcom/google/android/talk/TalkApp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 512
    .end local v0           #activeAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v2           #session:Lcom/google/android/gtalkservice/IImSession;
    :catch_0
    move-exception v1

    .line 513
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "talk"

    const-string v4, "RemoteException failure"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static startAccountSelectionActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 878
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 879
    const-class v1, Lcom/google/android/talk/AccountSelectionActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 880
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 881
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 882
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 883
    return-void
.end method

.method public static startAddAccountActivity(Landroid/app/Activity;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 902
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 903
    const-class v1, Lcom/google/android/talk/AddAccountActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 904
    const-string v1, "account_types"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "com.google"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 905
    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 906
    return-void
.end method

.method public static startBuddyListComboActivity(Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/app/Activity;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 887
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startBuddyListComboActivity: accountInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 891
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 892
    const-class v1, Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 893
    const-string v1, "username"

    iget-object v2, p0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    const-string v1, "accountId"

    iget-wide v2, p0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 897
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 898
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 899
    return-void
.end method

.method private unregisterAllSessions()V
    .locals 7

    .prologue
    .line 771
    iget-object v4, p0, Lcom/google/android/talk/AccountSelectionActivity;->mImSessionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 772
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 774
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/AccountSelectionActivity;->mImSessionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gtalkservice/IImSession;

    .line 775
    .local v3, session:Lcom/google/android/gtalkservice/IImSession;
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 776
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterAllSessions account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/google/android/gtalkservice/IImSession;->getAccountId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 778
    :cond_0
    iget-object v4, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionListener:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    if-eqz v4, :cond_1

    .line 779
    iget-object v4, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionListener:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    invoke-interface {v3, v4}, Lcom/google/android/gtalkservice/IImSession;->removeConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    .end local v3           #session:Lcom/google/android/gtalkservice/IImSession;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 781
    :catch_0
    move-exception v0

    .line 782
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "talk"

    const-string v5, "unregisterAllSessions caught "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 785
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v4, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionListener:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    if-eqz v4, :cond_3

    .line 786
    iget-object v4, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionListener:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    invoke-virtual {v4}, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;->clearRefs()V

    .line 787
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionListener:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    .line 789
    :cond_3
    return-void
.end method

.method private unregisterForAccountListChanged()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p0}, Lcom/google/android/talk/TalkApp;->removeAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 326
    return-void
.end method

.method private unregisterForServiceStateChanged()V
    .locals 2

    .prologue
    .line 763
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    const-string v0, "unregisterForServiceStateChanged"

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 766
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mSessionDispatchWindowOpen:Z

    .line 767
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/TalkApp;->removeServiceAvailableCallback(Landroid/os/Handler;)V

    .line 768
    return-void
.end method


# virtual methods
.method public connectionCreated(Ljava/lang/String;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 7
    .parameter "username"
    .parameter "imSession"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mImSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mImSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionListener:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    if-nez v0, :cond_0

    .line 566
    new-instance v0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;-><init>(Lcom/google/android/talk/AccountSelectionActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionListener:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionListener:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    invoke-interface {p2, v0}, Lcom/google/android/gtalkservice/IImSession;->addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 569
    invoke-interface {p2}, Lcom/google/android/gtalkservice/IImSession;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v1

    .line 570
    .local v1, state:Lcom/google/android/gtalkservice/ConnectionState;
    invoke-virtual {v1}, Lcom/google/android/gtalkservice/ConnectionState;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    const-string v0, "connectionCreated: already online"

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionListener:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    const/4 v2, 0x0

    invoke-interface {p2}, Lcom/google/android/gtalkservice/IImSession;->getAccountId()J

    move-result-wide v3

    invoke-interface {p2}, Lcom/google/android/gtalkservice/IImSession;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .end local v1           #state:Lcom/google/android/gtalkservice/ConnectionState;
    :cond_1
    :goto_0
    return-void

    .line 576
    :catch_0
    move-exception v6

    .line 577
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "talk"

    const-string v2, "connectionCreated caught "

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onAccountListChanged()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getAccountList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAddingAccount:Z

    .line 332
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAddAccountActivity(Landroid/app/Activity;)V

    .line 333
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->finish()V

    .line 337
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->registerForServiceStateChanged()V

    goto :goto_0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 911
    sparse-switch p1, :sswitch_data_0

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 913
    :sswitch_0
    if-eq p2, v2, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->finish()V

    goto :goto_0

    .line 919
    :sswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAddingAccount:Z

    .line 920
    if-eq p2, v2, :cond_2

    .line 922
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getAccountList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 923
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->finish()V

    goto :goto_0

    .line 925
    :cond_1
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->displayAccounts()V

    goto :goto_0

    .line 929
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->registerForAccountListChanged()V

    goto :goto_0

    .line 911
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/16 v4, 0x280

    .line 106
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/talk/AccountSelectionActivity;->mStopped:Z

    .line 110
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    .line 112
    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    const v2, 0x7f040002

    invoke-virtual {p0, v2}, Lcom/google/android/talk/AccountSelectionActivity;->setContentView(I)V

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f090026

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 118
    const v2, 0x7f100012

    invoke-virtual {p0, v2}, Lcom/google/android/talk/AccountSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/talk/AccountSelectionActivity;->mProgressText:Landroid/widget/TextView;

    .line 120
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->invalidateOptionsMenu()V

    .line 122
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->displayLoadingAccountsMode()V

    .line 123
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->registerForAccountListChanged()V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 129
    .local v0, listView:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    if-le v2, v4, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 131
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0, v4}, Lcom/google/android/talk/AccountSelectionActivity;->dp2Pixels(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-static {p0}, Lcom/google/android/talk/ConnectionStateOnlineReceiver;->dismissNotification(Landroid/content/Context;)V

    .line 136
    return-void

    .line 115
    .end local v0           #listView:Landroid/widget/ListView;
    :cond_1
    const v2, 0x7f040003

    invoke-virtual {p0, v2}, Lcom/google/android/talk/AccountSelectionActivity;->setContentView(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 604
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 605
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0060

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0065

    new-instance v2, Lcom/google/android/talk/AccountSelectionActivity$2;

    invoke-direct {v2, p0}, Lcom/google/android/talk/AccountSelectionActivity$2;-><init>(Lcom/google/android/talk/AccountSelectionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 622
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 342
    const/4 v0, 0x1

    return v0
.end method

.method public onDisplaySettings()V
    .locals 5

    .prologue
    .line 378
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/talk/GTalkPreferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getActiveAccount()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    .line 382
    if-eqz v1, :cond_0

    .line 383
    const-string v2, "accountId"

    iget-wide v3, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 385
    const-string v2, "username"

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/talk/AccountSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 389
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 489
    if-eqz p2, :cond_0

    .line 490
    invoke-direct {p0, p3}, Lcom/google/android/talk/AccountSelectionActivity;->signIn(I)V

    .line 492
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 169
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->clearAccountsLoading()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 359
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 374
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 361
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->onDisplaySettings()V

    goto :goto_0

    .line 365
    :sswitch_1
    const-string v1, "talk_accounts"

    invoke-static {p0, v1}, Lcom/google/android/talk/HelpUtils;->showHelp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :sswitch_2
    iput-boolean v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAddingAccount:Z

    .line 370
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAddAccountActivity(Landroid/app/Activity;)V

    .line 371
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->finish()V

    goto :goto_0

    .line 359
    :sswitch_data_0
    .sparse-switch
        0x7f100014 -> :sswitch_2
        0x7f1000b4 -> :sswitch_0
        0x7f1000b5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 347
    const v2, 0x7f1000b4

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 348
    .local v1, menuItem:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 349
    iget-object v2, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v2}, Lcom/google/android/talk/TalkApp;->getAccountList()Ljava/util/ArrayList;

    move-result-object v0

    .line 352
    .local v0, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 354
    .end local v0           #accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    :cond_0
    return v3

    .line 352
    .restart local v0       #accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 283
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->clearAccountsLoading()V

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mStopped:Z

    .line 287
    iget-boolean v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAddingAccount:Z

    if-nez v0, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->registerForAccountListChanged()V

    .line 290
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 314
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->clearAccountsLoading()V

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionRetry:I

    .line 317
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-static {v0, p0}, Lcom/google/android/talk/AccountLoginUtils;->showDialogIfNoDataAccess(Lcom/google/android/talk/TalkApp;Landroid/app/Activity;)Z

    .line 318
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 272
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->ensureServiceBound()V

    .line 273
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->registerForServiceStateChanged()V

    .line 274
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 294
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mStopped:Z

    .line 298
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->unregisterAllSessions()V

    .line 299
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->unregisterForAccountListChanged()V

    .line 300
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->unregisterForServiceStateChanged()V

    .line 308
    return-void
.end method
