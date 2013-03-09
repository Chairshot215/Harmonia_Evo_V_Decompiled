.class public Lcom/htc/util/contacts/SyncControl;
.super Ljava/lang/Object;
.source "SyncControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/contacts/SyncControl$SyncControlSyncStatusObserver;,
        Lcom/htc/util/contacts/SyncControl$ExceptionSync;,
        Lcom/htc/util/contacts/SyncControl$PendingSync;,
        Lcom/htc/util/contacts/SyncControl$SyncUnit;,
        Lcom/htc/util/contacts/SyncControl$SyncControlHandler;
    }
.end annotation


# static fields
.field public static final CANCEL:I = 0x3e9

.field private static final DEBUG:Z = true

.field public static final INIT:I = 0x3e8

.field private static final LOG:Ljava/lang/String; = "SyncControl"

.field public static final START_PENDING_SYNC:I = 0x3ea

.field private static mInstance:Lcom/htc/util/contacts/SyncControl;


# instance fields
.field private mAutoCancelAuthority:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExceptionSyncs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/htc/util/contacts/SyncControl$ExceptionSync;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPendingSyncs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/htc/util/contacts/SyncControl$PendingSync;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/String;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncControl_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;

    .line 69
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mAutoCancelAuthority:Ljava/util/HashSet;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mPendingSyncs:Ljava/util/HashSet;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mExceptionSyncs:Ljava/util/HashSet;

    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 73
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    invoke-virtual {p0}, Lcom/htc/util/contacts/SyncControl;->getNewWorkHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mWorkHandler:Landroid/os/Handler;

    .line 75
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncControl_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/util/contacts/SyncControl;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/util/contacts/SyncControl;Ljava/lang/String;Ljava/util/List;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/htc/util/contacts/SyncControl;->locateActiveList(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/util/contacts/SyncControl;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mExceptionSyncs:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/util/contacts/SyncControl;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mPendingSyncs:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/util/contacts/SyncControl;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mAutoCancelAuthority:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/util/contacts/SyncControl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized getSyncControl(Ljava/lang/String;)Lcom/htc/util/contacts/SyncControl;
    .locals 2
    .parameter "tag"

    .prologue
    .line 300
    const-class v1, Lcom/htc/util/contacts/SyncControl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/util/contacts/SyncControl;->mInstance:Lcom/htc/util/contacts/SyncControl;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lcom/htc/util/contacts/SyncControl;

    invoke-direct {v0, p0}, Lcom/htc/util/contacts/SyncControl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/util/contacts/SyncControl;->mInstance:Lcom/htc/util/contacts/SyncControl;

    .line 303
    :cond_0
    sget-object v0, Lcom/htc/util/contacts/SyncControl;->mInstance:Lcom/htc/util/contacts/SyncControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private locateActiveList(Ljava/lang/String;Ljava/util/List;)I
    .locals 4
    .parameter "authority"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 83
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 84
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    .line 85
    .local v1, info:Landroid/content/SyncInfo;
    iget-object v3, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    .end local v0           #i:I
    .end local v1           #info:Landroid/content/SyncInfo;
    :goto_1
    return v0

    .line 83
    .restart local v0       #i:I
    .restart local v1       #info:Landroid/content/SyncInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .end local v1           #info:Landroid/content/SyncInfo;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public addExceptionAccountType(Ljava/lang/String;)V
    .locals 4
    .parameter "accountType"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mExceptionSyncs:Ljava/util/HashSet;

    new-instance v1, Lcom/htc/util/contacts/SyncControl$ExceptionSync;

    new-instance v2, Landroid/accounts/Account;

    const-string v3, "*"

    invoke-direct {v2, v3, p1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "*"

    invoke-direct {v1, v2, v3}, Lcom/htc/util/contacts/SyncControl$ExceptionSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 320
    return-void
.end method

.method public addExceptionAuthority(Ljava/lang/String;)V
    .locals 5
    .parameter "authority"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mExceptionSyncs:Ljava/util/HashSet;

    new-instance v1, Lcom/htc/util/contacts/SyncControl$ExceptionSync;

    new-instance v2, Landroid/accounts/Account;

    const-string v3, "*"

    const-string v4, "*"

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Lcom/htc/util/contacts/SyncControl$ExceptionSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 324
    return-void
.end method

.method protected getNewSyncStatusObserver()Landroid/content/SyncStatusObserver;
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lcom/htc/util/contacts/SyncControl$SyncControlSyncStatusObserver;

    invoke-direct {v0, p0}, Lcom/htc/util/contacts/SyncControl$SyncControlSyncStatusObserver;-><init>(Lcom/htc/util/contacts/SyncControl;)V

    return-object v0
.end method

.method protected getNewWorkHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;

    iget-object v1, p0, Lcom/htc/util/contacts/SyncControl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;-><init>(Lcom/htc/util/contacts/SyncControl;Landroid/os/Looper;)V

    return-object v0
.end method

.method public removeAutoCancel()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mAutoCancelAuthority:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 328
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;

    const-string v1, "Removed all auto sync killer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method

.method public setCancel(Ljava/lang/String;Z)V
    .locals 3
    .parameter "authority"
    .parameter "autoCancel"

    .prologue
    const/16 v1, 0x3ea

    .line 307
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mAutoCancelAuthority:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/util/contacts/SyncControl;->mWorkHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    return-void
.end method

.method public startPendingSync()V
    .locals 4

    .prologue
    const/16 v3, 0x3ea

    .line 332
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mWorkHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 336
    return-void
.end method
