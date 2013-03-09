.class public Lcom/htc/omadm/gui/ext/DMGui;
.super Ljava/lang/Object;
.source "DMGui.java"


# static fields
.field private static mFlagHighPriorityQueue:Z

.field private static mFlagNormalPriorityQueue:Z

.field private static mHighPriorityQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private static mNormalPriorityQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public CIForFota_flag:Z

.field private final DBG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field public bBackground:Z

.field private mAcquirePower:Z

.field private mAutoCloseDialogTime:I

.field private mAutoFinishActivity:Z

.field private mAutoResumeForegroundTime:I

.field private mAutoReturnHomeScreen:Z

.field private mButton1_Text:Ljava/lang/String;

.field private mButton2_Text:Ljava/lang/String;

.field private mButton3_Text:Ljava/lang/String;

.field private mButtonStyle:I

.field private mCallbackHandler:Landroid/os/Handler;

.field protected mContext:Landroid/content/Context;

.field private mDescription:Ljava/lang/String;

.field private mDescription_Enable:Z

.field private mDialogMessageChangeTime:I

.field private mDialogPostString:Ljava/lang/String;

.field private mDialogPreString:Ljava/lang/String;

.field private mDialogStyle:I

.field private mDisableBackKey:Z

.field private mDisableKeyGuard:Z

.field private mDisableSearchKey:Z

.field private mDisableTouchEvent:Z

.field private mHandler:Landroid/os/Handler;

.field private mMessage:Ljava/lang/String;

.field private mOOBECase:Z

.field private mOption:I

.field private mPM:Landroid/os/PowerManager;

.field private mProgressBarMaxSize:I

.field private mQueuePriority:I

.field protected mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatus:I

.field private mTag:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUIRetryIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/htc/omadm/gui/ext/DMGui;->mNormalPriorityQueue:Ljava/util/Queue;

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/htc/omadm/gui/ext/DMGui;->mHighPriorityQueue:Ljava/util/Queue;

    .line 58
    sput-boolean v1, Lcom/htc/omadm/gui/ext/DMGui;->mFlagNormalPriorityQueue:Z

    .line 59
    sput-boolean v1, Lcom/htc/omadm/gui/ext/DMGui;->mFlagHighPriorityQueue:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "callbackhandler"
    .parameter "tag"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 213
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v4, p0, Lcom/htc/omadm/gui/ext/DMGui;->DBG:Z

    .line 19
    const-string v0, "libgo"

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->LOG_TAG:Ljava/lang/String;

    .line 22
    iput v3, p0, Lcom/htc/omadm/gui/ext/DMGui;->mOption:I

    .line 23
    iput v3, p0, Lcom/htc/omadm/gui/ext/DMGui;->mStatus:I

    .line 26
    iput v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDialogStyle:I

    .line 27
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mTitle:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mMessage:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDescription_Enable:Z

    .line 30
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDescription:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButtonStyle:I

    .line 32
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButton1_Text:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButton2_Text:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButton3_Text:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mAcquirePower:Z

    .line 36
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDisableKeyGuard:Z

    .line 37
    iput v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mAutoCloseDialogTime:I

    .line 38
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mAutoResumeForegroundTime:I

    .line 39
    iput v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDialogMessageChangeTime:I

    .line 40
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDialogPreString:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDialogPostString:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mAutoReturnHomeScreen:Z

    .line 43
    iput-boolean v4, p0, Lcom/htc/omadm/gui/ext/DMGui;->mAutoFinishActivity:Z

    .line 44
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mProgressBarMaxSize:I

    .line 45
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDisableBackKey:Z

    .line 46
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDisableSearchKey:Z

    .line 47
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDisableTouchEvent:Z

    .line 49
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mOOBECase:Z

    .line 52
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    .line 53
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mTag:Ljava/lang/String;

    .line 55
    iput v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mQueuePriority:I

    .line 61
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mPM:Landroid/os/PowerManager;

    .line 63
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mUIRetryIntent:Landroid/content/Intent;

    .line 64
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mCallbackHandler:Landroid/os/Handler;

    .line 66
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->CIForFota_flag:Z

    .line 68
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->bBackground:Z

    .line 70
    new-instance v0, Lcom/htc/omadm/gui/ext/DMGui$1;

    invoke-direct {v0, p0}, Lcom/htc/omadm/gui/ext/DMGui$1;-><init>(Lcom/htc/omadm/gui/ext/DMGui;)V

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Lcom/htc/omadm/gui/ext/DMGui$2;

    invoke-direct {v0, p0}, Lcom/htc/omadm/gui/ext/DMGui$2;-><init>(Lcom/htc/omadm/gui/ext/DMGui;)V

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 214
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    .line 215
    iput-object p2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mCallbackHandler:Landroid/os/Handler;

    .line 216
    iput-object p3, p0, Lcom/htc/omadm/gui/ext/DMGui;->mTag:Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mPM:Landroid/os/PowerManager;

    .line 218
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/DMGui;->Open()V

    .line 219
    return-void
.end method

.method private IntentForDMEXIST()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/DMGui;->putExtraDataToIntent()Landroid/content/Intent;

    move-result-object v0

    .line 520
    .local v0, Asyncintent:Landroid/content/Intent;
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 521
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 522
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const-string v2, "com.htc.omadm.gui.ext.ExistDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    return-object v0
.end method

.method private IntentForDialog()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/DMGui;->putExtraDataToIntent()Landroid/content/Intent;

    move-result-object v0

    .line 497
    .local v0, Asyncintent:Landroid/content/Intent;
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 498
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 500
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 502
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const-string v2, "com.htc.omadm.gui.ext.BaseDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    return-object v0
.end method

.method static synthetic access$000(Lcom/htc/omadm/gui/ext/DMGui;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mUIRetryIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/omadm/gui/ext/DMGui;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/omadm/gui/ext/DMGui;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/DMGui;->retryResumeUIToForeground()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/omadm/gui/ext/DMGui;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    sput-boolean p0, Lcom/htc/omadm/gui/ext/DMGui;->mFlagNormalPriorityQueue:Z

    return p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    sput-boolean p0, Lcom/htc/omadm/gui/ext/DMGui;->mFlagHighPriorityQueue:Z

    return p0
.end method

.method private checkQueue()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 414
    :try_start_0
    const-string v3, "libgo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DMGui: mFlagHighPriorityQueue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/htc/omadm/gui/ext/DMGui;->mFlagHighPriorityQueue:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v3, "libgo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DMGui: mFlagNormalPriorityQueue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/htc/omadm/gui/ext/DMGui;->mFlagNormalPriorityQueue:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    sget-object v3, Lcom/htc/omadm/gui/ext/DMGui;->mHighPriorityQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/htc/omadm/gui/ext/DMGui;->mFlagHighPriorityQueue:Z

    if-ne v3, v6, :cond_1

    .line 418
    const/4 v3, 0x0

    sput-boolean v3, Lcom/htc/omadm/gui/ext/DMGui;->mFlagHighPriorityQueue:Z

    .line 419
    sget-object v3, Lcom/htc/omadm/gui/ext/DMGui;->mHighPriorityQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 420
    .local v1, highIntent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/htc/omadm/gui/ext/DMGui;->retryStartUIActivity(Landroid/content/Intent;)V

    .line 421
    iget-object v3, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 431
    .end local v1           #highIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    sget-object v3, Lcom/htc/omadm/gui/ext/DMGui;->mNormalPriorityQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/htc/omadm/gui/ext/DMGui;->mFlagNormalPriorityQueue:Z

    if-ne v3, v6, :cond_0

    sget-boolean v3, Lcom/htc/omadm/gui/ext/DMGui;->mFlagHighPriorityQueue:Z

    if-ne v3, v6, :cond_0

    .line 423
    const/4 v3, 0x0

    sput-boolean v3, Lcom/htc/omadm/gui/ext/DMGui;->mFlagNormalPriorityQueue:Z

    .line 424
    sget-object v3, Lcom/htc/omadm/gui/ext/DMGui;->mNormalPriorityQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 425
    .local v2, normalIntent:Landroid/content/Intent;
    invoke-direct {p0, v2}, Lcom/htc/omadm/gui/ext/DMGui;->retryStartUIActivity(Landroid/content/Intent;)V

    .line 426
    iget-object v3, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 428
    .end local v2           #normalIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 429
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private putExtraDataToIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 462
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 463
    .local v0, Asyncintent:Landroid/content/Intent;
    const-string v1, "Tag"

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v1, "Option"

    iget v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mOption:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 465
    const-string v1, "Status"

    iget v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    const-string v1, "DialogStyle"

    iget v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDialogStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 467
    const-string v1, "Title"

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const-string v1, "Message"

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const-string v1, "ScrollEnable"

    iget-boolean v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDescription_Enable:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 470
    const-string v1, "Description"

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string v1, "ButtonStyle"

    iget v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButtonStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 472
    const-string v1, "Button1_Text"

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButton1_Text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const-string v1, "Button2_Text"

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButton2_Text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string v1, "Button3_Text"

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButton3_Text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v1, "AcquirePower"

    iget-boolean v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mAcquirePower:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 476
    const-string v1, "DisableKeyGuard"

    iget-boolean v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDisableKeyGuard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 477
    const-string v1, "AutoCloseDialogTime"

    iget v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mAutoCloseDialogTime:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 478
    const-string v1, "AutoResumeForegroundTime"

    iget v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mAutoResumeForegroundTime:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    const-string v1, "DialogMessageChangeTime"

    iget v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDialogMessageChangeTime:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 480
    const-string v1, "DialogPreString"

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDialogPreString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-string v1, "DialogPostString"

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDialogPostString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v1, "AutoReturnHomeScreen"

    iget-boolean v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mAutoReturnHomeScreen:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 484
    const-string v1, "AutoFinishActivity"

    iget-boolean v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mAutoFinishActivity:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 485
    const-string v1, "ProgressBarMaxSize"

    iget v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mProgressBarMaxSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    const-string v1, "QueuePriority"

    iget v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mQueuePriority:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    const-string v1, "DisableBackKey"

    iget-boolean v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDisableBackKey:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 488
    const-string v1, "DisableSearchKey"

    iget-boolean v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDisableSearchKey:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 489
    const-string v1, "DisableTouchEvent"

    iget-boolean v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDisableTouchEvent:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 490
    const-string v1, "OOBECase"

    iget-boolean v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mOOBECase:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 492
    return-object v0
.end method

.method private retryResumeUIToForeground()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 550
    const-string v0, "libgo"

    const-string v1, "DMGui: retryResumeUI()"

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    sput-boolean v3, Lcom/htc/omadm/prop/PropertyState;->FLAG_RETRY_RESUME_UI_TO_FOREGROUND:Z

    .line 552
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 553
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 554
    return-void
.end method

.method private retryStartUIActivity(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 540
    const-string v0, "libgo"

    const-string v1, "DMGui: retryStartUI()"

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mUIRetryIntent:Landroid/content/Intent;

    .line 542
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/omadm/prop/PropertyState;->FLAG_RETRY_START_UI_ACTIVITY:Z

    .line 543
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 544
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 546
    return-void
.end method


# virtual methods
.method public Close()V
    .locals 0

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/DMGui;->closeRegisterReceiver()V

    .line 227
    return-void
.end method

.method public Open()V
    .locals 0

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/DMGui;->startRegisterReceiver()V

    .line 223
    return-void
.end method

.method public closeRegisterReceiver()V
    .locals 3

    .prologue
    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public informHighGUIClose()V
    .locals 3

    .prologue
    .line 531
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.andorid.omadm.gui.inform.high.close"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 532
    return-void
.end method

.method public informNormalGUIClose()V
    .locals 3

    .prologue
    .line 527
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.andorid.omadm.gui.inform.normal.close"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 528
    return-void
.end method

.method public informProgressBarClose()V
    .locals 3

    .prologue
    .line 535
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.andorid.omadm.gui.inform.progressbar.close"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 536
    return-void
.end method

.method public resetParameter()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 434
    iput v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mOption:I

    .line 435
    iput v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mStatus:I

    .line 436
    iput v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDialogStyle:I

    .line 437
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mTitle:Ljava/lang/String;

    .line 438
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mMessage:Ljava/lang/String;

    .line 439
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDescription_Enable:Z

    .line 440
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDescription:Ljava/lang/String;

    .line 441
    iput v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButtonStyle:I

    .line 442
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButton1_Text:Ljava/lang/String;

    .line 443
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButton2_Text:Ljava/lang/String;

    .line 444
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButton3_Text:Ljava/lang/String;

    .line 445
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mAcquirePower:Z

    .line 446
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDisableKeyGuard:Z

    .line 447
    iput v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mAutoCloseDialogTime:I

    .line 448
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mAutoResumeForegroundTime:I

    .line 449
    iput v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDialogMessageChangeTime:I

    .line 450
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDialogPreString:Ljava/lang/String;

    .line 451
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDialogPostString:Ljava/lang/String;

    .line 452
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mAutoReturnHomeScreen:Z

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mAutoFinishActivity:Z

    .line 454
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mProgressBarMaxSize:I

    .line 455
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDisableBackKey:Z

    .line 456
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDisableSearchKey:Z

    .line 457
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDisableTouchEvent:Z

    .line 458
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mOOBECase:Z

    .line 459
    return-void
.end method

.method public setAcquirePower(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mAcquirePower:Z

    .line 314
    return-void
.end method

.method public setAutoCloseDialogTime(I)V
    .locals 0
    .parameter "millisecond"

    .prologue
    .line 321
    if-gez p1, :cond_0

    .line 322
    const/4 p1, 0x0

    .line 323
    :cond_0
    iput p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mAutoCloseDialogTime:I

    .line 324
    return-void
.end method

.method public setAutoFinishActivity(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mAutoFinishActivity:Z

    .line 347
    return-void
.end method

.method public setAutoResumeForegroundTime(I)V
    .locals 0
    .parameter "millisecond"

    .prologue
    .line 327
    if-gez p1, :cond_0

    .line 328
    const/4 p1, 0x0

    .line 329
    :cond_0
    iput p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mAutoResumeForegroundTime:I

    .line 330
    return-void
.end method

.method public setAutoReturnHomeScreen(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mAutoReturnHomeScreen:Z

    .line 343
    return-void
.end method

.method public setButtonStyle(I)V
    .locals 0
    .parameter "buttonStyle"

    .prologue
    .line 290
    iput p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButtonStyle:I

    .line 291
    return-void
.end method

.method public setButtonStyle(ILjava/lang/String;)V
    .locals 0
    .parameter "buttonStyle"
    .parameter "button1_Text"

    .prologue
    .line 294
    iput p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButtonStyle:I

    .line 295
    iput-object p2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButton1_Text:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setButtonStyle(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "buttonStyle"
    .parameter "button1_Text"
    .parameter "button2_Text"

    .prologue
    .line 299
    iput p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButtonStyle:I

    .line 300
    iput-object p2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButton1_Text:Ljava/lang/String;

    .line 301
    iput-object p3, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButton2_Text:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setButtonStyle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "buttonStyle"
    .parameter "button1_Text"
    .parameter "button2_Text"
    .parameter "button3_Text"

    .prologue
    .line 306
    iput p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButtonStyle:I

    .line 307
    iput-object p2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButton1_Text:Ljava/lang/String;

    .line 308
    iput-object p3, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButton2_Text:Ljava/lang/String;

    .line 309
    iput-object p4, p0, Lcom/htc/omadm/gui/ext/DMGui;->mButton3_Text:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .parameter "description"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDescription:Ljava/lang/String;

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDescription_Enable:Z

    .line 287
    return-void
.end method

.method public setDialogMessageChangeTime(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "millisecond"
    .parameter "preString"
    .parameter "postString"

    .prologue
    .line 333
    if-gez p1, :cond_0

    .line 334
    const/4 p1, 0x0

    .line 335
    :cond_0
    iput p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDialogMessageChangeTime:I

    .line 336
    iput-object p2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDialogPreString:Ljava/lang/String;

    .line 337
    iput-object p3, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDialogPostString:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setDialogStyle(I)V
    .locals 0
    .parameter "dialogStyle"

    .prologue
    .line 273
    iput p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDialogStyle:I

    .line 274
    return-void
.end method

.method public setDisableBackKey(Z)V
    .locals 0
    .parameter "disable"

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDisableBackKey:Z

    .line 357
    return-void
.end method

.method public setDisableKeyGuard(Z)V
    .locals 0
    .parameter "disable"

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDisableKeyGuard:Z

    .line 318
    return-void
.end method

.method public setDisableSearchKey(Z)V
    .locals 0
    .parameter "disable"

    .prologue
    .line 360
    iput-boolean p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDisableSearchKey:Z

    .line 361
    return-void
.end method

.method public setDisableTouchEvent(Z)V
    .locals 0
    .parameter "disable"

    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mDisableTouchEvent:Z

    .line 365
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mMessage:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setOOBECase(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 369
    iput-boolean p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mOOBECase:Z

    .line 370
    return-void
.end method

.method public setOption(I)V
    .locals 0
    .parameter "option"

    .prologue
    .line 265
    iput p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mOption:I

    .line 266
    return-void
.end method

.method public setProgressBarMaxSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 350
    if-gez p1, :cond_0

    .line 351
    const/4 p1, 0x0

    .line 352
    :cond_0
    iput p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mProgressBarMaxSize:I

    .line 353
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 269
    iput p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mStatus:I

    .line 270
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mTitle:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public showDMEXIST()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/DMGui;->IntentForDMEXIST()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 400
    return-void
.end method

.method public showHighGUI()V
    .locals 2

    .prologue
    .line 389
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mQueuePriority:I

    .line 390
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/DMGui;->IntentForDialog()Landroid/content/Intent;

    move-result-object v0

    .line 392
    .local v0, normalIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 396
    return-void
.end method

.method public showNormalGUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 375
    const-string v1, "libgo"

    const-string v2, "DMGui: showNormalGUI()"

    invoke-static {v1, v2}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iput v3, p0, Lcom/htc/omadm/gui/ext/DMGui;->mQueuePriority:I

    .line 377
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/DMGui;->IntentForDialog()Landroid/content/Intent;

    move-result-object v0

    .line 379
    .local v0, normalIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 380
    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/DMGui;->retryStartUIActivity(Landroid/content/Intent;)V

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 386
    return-void
.end method

.method public showProgressBar(I)V
    .locals 3
    .parameter "currentsize"

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/DMGui;->IntentForDialog()Landroid/content/Intent;

    move-result-object v0

    .line 404
    .local v0, progressBarIntent:Landroid/content/Intent;
    const-string v1, "ProgressBarCurrentSize"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 407
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 409
    :cond_0
    return-void
.end method

.method public startRegisterReceiver()V
    .locals 3

    .prologue
    .line 230
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v0, intentfilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.andorid.omadm.gui.callback.normal.positive"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v1, "com.htc.andorid.omadm.gui.callback.normal.negative"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v1, "com.htc.andorid.omadm.gui.callback.normal.neutral"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v1, "com.htc.andorid.omadm.gui.callback.normal.back"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v1, "com.htc.andorid.omadm.gui.callback.normal.autoclose"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v1, "com.htc.andorid.omadm.gui.callback.normal.close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v1, "com.htc.andorid.omadm.gui.callback.high.positive"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    const-string v1, "com.htc.andorid.omadm.gui.callback.high.negative"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v1, "com.htc.andorid.omadm.gui.callback.high.neutral"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v1, "com.htc.andorid.omadm.gui.callback.high.back"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v1, "com.htc.andorid.omadm.gui.callback.high.autoclose"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v1, "com.htc.andorid.omadm.gui.callback.high.close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v1, "com.htc.andorid.omadm.gui.callback.progressbar.success"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    const-string v1, "com.htc.andorid.omadm.gui.callback.progressbar.fail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v1, "com.htc.andorid.omadm.gui.callback.progressbar.close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v1, "com.htc.andorid.omadm.dialog.resume"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 253
    return-void
.end method
