.class public Lcom/htc/omadm/gui/ext/BaseDialog;
.super Landroid/app/Activity;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;,
        Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;,
        Lcom/htc/omadm/gui/ext/BaseDialog$AutoCloseDialogTimer;
    }
.end annotation


# static fields
.field private static hasAcquirePower:Z

.field private static hasDisableKeyGuard:Z

.field public static mOOBECase:Z


# instance fields
.field private final DBG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field private bAlreadySendUIOOBEIntent:Z

.field private bHFA_flag:Z

.field private countdown_textview:Landroid/widget/TextView;

.field private mAcquirePower:Z

.field protected mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mAutoCloseDialogTime:I

.field private mAutoFinishActivity:Z

.field private mAutoResumeForegroundTime:I

.field private mAutoResumeForegroundTimer:Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;

.field private mAutoReturnHomeScreen:Z

.field private mButton1_Text:Ljava/lang/String;

.field private mButton2_Text:Ljava/lang/String;

.field private mButton3_Text:Ljava/lang/String;

.field private mButtonStyle:I

.field private mCallbackFlag:Z

.field private mDescription:Ljava/lang/String;

.field private mDialogChangeMessageHandler:Landroid/os/Handler;

.field private mDialogMessageChangeMode:Z

.field private mDialogMessageChangeTime:I

.field private mDialogMessageChangeTimer:Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;

.field private mDialogPostString:Ljava/lang/String;

.field private mDialogPreString:Ljava/lang/String;

.field private mDialogStyle:I

.field private mDisableBackKey:Z

.field private mDisableKeyGuard:Z

.field private mDisableSearchKey:Z

.field private mDisableTouchEvent:Z

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMessage:Ljava/lang/String;

.field private mOption:I

.field private mPhoneMode:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerMgr:Landroid/os/PowerManager;

.field private mProgressBarCurrentSize:I

.field protected mProgressBarDialog:Lcom/htc/app/HtcProgressDialog;

.field private mProgressBarMaxSize:I

.field protected mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mQueuePriority:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeHandler:Landroid/os/Handler;

.field private mResumeMode:Z

.field private mScrollEnable:Z

.field private mStatus:I

.field private mTag:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    sput-boolean v0, Lcom/htc/omadm/gui/ext/BaseDialog;->hasAcquirePower:Z

    .line 105
    sput-boolean v0, Lcom/htc/omadm/gui/ext/BaseDialog;->hasDisableKeyGuard:Z

    .line 107
    sput-boolean v0, Lcom/htc/omadm/gui/ext/BaseDialog;->mOOBECase:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const-string v0, "libgo"

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->LOG_TAG:Ljava/lang/String;

    .line 47
    iput-boolean v3, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->DBG:Z

    .line 50
    iput v4, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mOption:I

    .line 51
    iput v4, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mStatus:I

    .line 54
    iput v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogStyle:I

    .line 55
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mTitle:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mMessage:Ljava/lang/String;

    .line 57
    iput v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mButtonStyle:I

    .line 58
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mButton1_Text:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mButton2_Text:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mButton3_Text:Ljava/lang/String;

    .line 61
    iput v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAutoCloseDialogTime:I

    .line 62
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAutoResumeForegroundTime:I

    .line 63
    iput v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogMessageChangeTime:I

    .line 64
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogPreString:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogPostString:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAutoReturnHomeScreen:Z

    .line 67
    iput-boolean v3, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAutoFinishActivity:Z

    .line 68
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarMaxSize:I

    .line 69
    iput v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarCurrentSize:I

    .line 70
    iput v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mQueuePriority:I

    .line 71
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDisableBackKey:Z

    .line 72
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDisableSearchKey:Z

    .line 73
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDisableTouchEvent:Z

    .line 75
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAcquirePower:Z

    .line 76
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDisableKeyGuard:Z

    .line 82
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mTag:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mUri:Landroid/net/Uri;

    .line 85
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 86
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarDialog:Lcom/htc/app/HtcProgressDialog;

    .line 88
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 90
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAutoResumeForegroundTimer:Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;

    .line 91
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogMessageChangeTimer:Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;

    .line 93
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDescription:Ljava/lang/String;

    .line 94
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mScrollEnable:Z

    .line 95
    iput-object v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->countdown_textview:Landroid/widget/TextView;

    .line 97
    iput-boolean v3, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mCallbackFlag:Z

    .line 98
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mResumeMode:Z

    .line 99
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mPhoneMode:Z

    .line 100
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogMessageChangeMode:Z

    .line 110
    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->bHFA_flag:Z

    .line 111
    iput-boolean v3, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->bAlreadySendUIOOBEIntent:Z

    .line 113
    new-instance v0, Lcom/htc/omadm/gui/ext/BaseDialog$1;

    invoke-direct {v0, p0}, Lcom/htc/omadm/gui/ext/BaseDialog$1;-><init>(Lcom/htc/omadm/gui/ext/BaseDialog;)V

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    new-instance v0, Lcom/htc/omadm/gui/ext/BaseDialog$2;

    invoke-direct {v0, p0}, Lcom/htc/omadm/gui/ext/BaseDialog$2;-><init>(Lcom/htc/omadm/gui/ext/BaseDialog;)V

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mHandler:Landroid/os/Handler;

    .line 155
    new-instance v0, Lcom/htc/omadm/gui/ext/BaseDialog$3;

    invoke-direct {v0, p0}, Lcom/htc/omadm/gui/ext/BaseDialog$3;-><init>(Lcom/htc/omadm/gui/ext/BaseDialog;)V

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mResumeHandler:Landroid/os/Handler;

    .line 172
    new-instance v0, Lcom/htc/omadm/gui/ext/BaseDialog$4;

    invoke-direct {v0, p0}, Lcom/htc/omadm/gui/ext/BaseDialog$4;-><init>(Lcom/htc/omadm/gui/ext/BaseDialog;)V

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogChangeMessageHandler:Landroid/os/Handler;

    .line 187
    new-instance v0, Lcom/htc/omadm/gui/ext/BaseDialog$5;

    invoke-direct {v0, p0}, Lcom/htc/omadm/gui/ext/BaseDialog$5;-><init>(Lcom/htc/omadm/gui/ext/BaseDialog;)V

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 931
    return-void
.end method

.method private Close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 354
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->closeRegisterReceiver()V

    .line 356
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mResumeMode:Z

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->StopAutoResumeForegroundTimer()V

    .line 358
    :cond_0
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAcquirePower:Z

    if-eqz v0, :cond_1

    .line 359
    invoke-direct {p0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->setScreenAlwaysOn(Z)V

    .line 360
    :cond_1
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDisableKeyGuard:Z

    if-eqz v0, :cond_2

    .line 361
    invoke-direct {p0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->disableKeyGuard(Z)V

    .line 362
    :cond_2
    return-void
.end method

.method private Open()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->initData()V

    .line 349
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->setupInitFunction()V

    .line 350
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->startRegisterReceiver()V

    .line 351
    return-void
.end method

.method private StopAutoResumeForegroundTimer()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mResumeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 506
    return-void
.end method

.method static synthetic access$000(Lcom/htc/omadm/gui/ext/BaseDialog;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/omadm/gui/ext/BaseDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mQueuePriority:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/omadm/gui/ext/BaseDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/omadm/gui/ext/BaseDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDisableBackKey:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/omadm/gui/ext/BaseDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/omadm/gui/ext/BaseDialog;->sendButtonCallback(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/omadm/gui/ext/BaseDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->setupFinishFunction()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/omadm/gui/ext/BaseDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDisableSearchKey:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/omadm/gui/ext/BaseDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDisableTouchEvent:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/omadm/gui/ext/BaseDialog;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/omadm/gui/ext/BaseDialog;->setEnableProgressBar(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/omadm/gui/ext/BaseDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->dismissDialogAndFinishActivity()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/omadm/gui/ext/BaseDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mResumeMode:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/omadm/gui/ext/BaseDialog;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/omadm/gui/ext/BaseDialog;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/omadm/gui/ext/BaseDialog;->sendCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/omadm/gui/ext/BaseDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->StopAutoResumeForegroundTimer()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/omadm/gui/ext/BaseDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogStyle:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/omadm/gui/ext/BaseDialog;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/omadm/gui/ext/BaseDialog;->setResumeMode(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/omadm/gui/ext/BaseDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->clearShowingDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/omadm/gui/ext/BaseDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->clearProgressBarDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/omadm/gui/ext/BaseDialog;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/omadm/gui/ext/BaseDialog;->onChangeCallState(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/omadm/gui/ext/BaseDialog;)Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAutoResumeForegroundTimer:Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/omadm/gui/ext/BaseDialog;)Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogMessageChangeTimer:Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/omadm/gui/ext/BaseDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mPhoneMode:Z

    return p1
.end method

.method private appendButton(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v3, -0x2

    const/4 v2, -0x1

    .line 821
    const-string v0, " appendButton"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V

    .line 822
    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mButtonStyle:I

    packed-switch v0, :pswitch_data_0

    .line 877
    :goto_0
    :pswitch_0
    return-void

    .line 826
    :pswitch_1
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mButton1_Text:Ljava/lang/String;

    new-instance v1, Lcom/htc/omadm/gui/ext/BaseDialog$9;

    invoke-direct {v1, p0}, Lcom/htc/omadm/gui/ext/BaseDialog$9;-><init>(Lcom/htc/omadm/gui/ext/BaseDialog;)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 836
    :pswitch_2
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mButton1_Text:Ljava/lang/String;

    new-instance v1, Lcom/htc/omadm/gui/ext/BaseDialog$10;

    invoke-direct {v1, p0}, Lcom/htc/omadm/gui/ext/BaseDialog$10;-><init>(Lcom/htc/omadm/gui/ext/BaseDialog;)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 843
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mButton2_Text:Ljava/lang/String;

    new-instance v1, Lcom/htc/omadm/gui/ext/BaseDialog$11;

    invoke-direct {v1, p0}, Lcom/htc/omadm/gui/ext/BaseDialog$11;-><init>(Lcom/htc/omadm/gui/ext/BaseDialog;)V

    invoke-virtual {p1, v3, v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 852
    :pswitch_3
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mButton1_Text:Ljava/lang/String;

    new-instance v1, Lcom/htc/omadm/gui/ext/BaseDialog$12;

    invoke-direct {v1, p0}, Lcom/htc/omadm/gui/ext/BaseDialog$12;-><init>(Lcom/htc/omadm/gui/ext/BaseDialog;)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 859
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mButton2_Text:Ljava/lang/String;

    new-instance v1, Lcom/htc/omadm/gui/ext/BaseDialog$13;

    invoke-direct {v1, p0}, Lcom/htc/omadm/gui/ext/BaseDialog$13;-><init>(Lcom/htc/omadm/gui/ext/BaseDialog;)V

    invoke-virtual {p1, v3, v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 866
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mButton3_Text:Ljava/lang/String;

    new-instance v2, Lcom/htc/omadm/gui/ext/BaseDialog$14;

    invoke-direct {v2, p0}, Lcom/htc/omadm/gui/ext/BaseDialog$14;-><init>(Lcom/htc/omadm/gui/ext/BaseDialog;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 822
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private appendExternalView(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 10
    .parameter "dialog"

    .prologue
    const/4 v9, 0x0

    .line 786
    const-string v7, " appendExternalView"

    invoke-direct {p0, v7}, Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V

    .line 787
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 789
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 790
    .local v0, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 793
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/htc/omadm/gui/ext/BaseDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 795
    .local v3, mlayoutinflator1:Landroid/view/LayoutInflater;
    const v7, 0x7f030001

    invoke-virtual {v3, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 797
    .local v5, mview1:Landroid/view/View;
    const v7, 0x7f070002

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->countdown_textview:Landroid/widget/TextView;

    .line 806
    iget-boolean v7, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mScrollEnable:Z

    if-eqz v7, :cond_0

    .line 807
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/htc/omadm/gui/ext/BaseDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 809
    .local v2, mlayoutinflator:Landroid/view/LayoutInflater;
    const v7, 0x7f030005

    invoke-virtual {v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 810
    .local v4, mview:Landroid/view/View;
    const v7, 0x7f070010

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 811
    .local v6, tv:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 814
    .end local v2           #mlayoutinflator:Landroid/view/LayoutInflater;
    .end local v4           #mview:Landroid/view/View;
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcAlertDialog;->setView(Landroid/view/View;)V

    .line 815
    invoke-direct {p0, p1}, Lcom/htc/omadm/gui/ext/BaseDialog;->appendButton(Lcom/htc/widget/HtcAlertDialog;)V

    .line 817
    return-void
.end method

.method private checkAutoCloseDialog(I)V
    .locals 6
    .parameter "millisecond"

    .prologue
    .line 477
    if-lez p1, :cond_0

    .line 478
    new-instance v0, Lcom/htc/omadm/gui/ext/BaseDialog$AutoCloseDialogTimer;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/omadm/gui/ext/BaseDialog$AutoCloseDialogTimer;-><init>(Lcom/htc/omadm/gui/ext/BaseDialog;JJ)V

    .line 479
    .local v0, timer:Lcom/htc/omadm/gui/ext/BaseDialog$AutoCloseDialogTimer;
    invoke-virtual {v0}, Lcom/htc/omadm/gui/ext/BaseDialog$AutoCloseDialogTimer;->start()Landroid/os/CountDownTimer;

    .line 481
    .end local v0           #timer:Lcom/htc/omadm/gui/ext/BaseDialog$AutoCloseDialogTimer;
    :cond_0
    return-void
.end method

.method private checkAutoFinishActivity(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 518
    if-eqz p1, :cond_0

    .line 519
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->dismissDialogAndFinishActivity()V

    .line 521
    :cond_0
    return-void
.end method

.method private checkAutoResumeForeground(I)V
    .locals 6
    .parameter "millisecond"

    .prologue
    .line 484
    if-lez p1, :cond_0

    .line 485
    new-instance v0, Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;-><init>(Lcom/htc/omadm/gui/ext/BaseDialog;JJ)V

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAutoResumeForegroundTimer:Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;

    .line 487
    :cond_0
    return-void
.end method

.method private checkAutoReturnHomeScreen(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 509
    if-eqz p1, :cond_0

    .line 510
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 513
    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->startActivity(Landroid/content/Intent;)V

    .line 515
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private checkDialogMessageChange(I)V
    .locals 8
    .parameter "millisecond"

    .prologue
    .line 490
    if-lez p1, :cond_0

    .line 491
    new-instance v0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    iget-object v6, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogPreString:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogPostString:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;-><init>(Lcom/htc/omadm/gui/ext/BaseDialog;JJLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogMessageChangeTimer:Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;

    .line 492
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogMessageChangeTimer:Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;

    invoke-virtual {v0}, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->start()Landroid/os/CountDownTimer;

    .line 493
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->setDialogMessageChangeMode(Z)V

    .line 495
    :cond_0
    return-void
.end method

.method private checkDialogMessageChangeTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 498
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogMessageChangeMode:Z

    if-eqz v0, :cond_0

    .line 499
    invoke-direct {p0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->setDialogMessageChangeMode(Z)V

    .line 500
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogChangeMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 502
    :cond_0
    return-void
.end method

.method private clearProgressBarDialog()V
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->removeDialog(I)V

    .line 452
    return-void
.end method

.method private clearShowingDialog()V
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->removeDialog(I)V

    .line 447
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->removeDialog(I)V

    .line 448
    return-void
.end method

.method private closeRegisterReceiver()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 434
    return-void
.end method

.method private converOptionAndStatus(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 985
    if-ltz p1, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    .line 986
    sget-object v0, Lcom/htc/omadm/prop/PropertyGUI;->BEHAVIOR_MAPPING_STRING:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 988
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method private disableKeyGuard(Z)V
    .locals 3
    .parameter "disable"

    .prologue
    .line 577
    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/htc/omadm/gui/ext/BaseDialog;->hasDisableKeyGuard:Z

    if-nez v0, :cond_1

    .line 578
    const-string v0, "libgo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableKeyGuard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 581
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "libgo"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 582
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 584
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/omadm/gui/ext/BaseDialog;->hasDisableKeyGuard:Z

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    if-nez p1, :cond_0

    sget-boolean v0, Lcom/htc/omadm/gui/ext/BaseDialog;->hasDisableKeyGuard:Z

    if-eqz v0, :cond_0

    .line 588
    const-string v0, "libgo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableKeyGuard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_2

    .line 592
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 593
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "libgo"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 595
    :cond_2
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 597
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/omadm/gui/ext/BaseDialog;->hasDisableKeyGuard:Z

    goto :goto_0
.end method

.method private dismissDialogAndFinishActivity()V
    .locals 1

    .prologue
    .line 655
    const-string v0, " dismissDialogAndFinishActivity()"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_2

    .line 661
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 662
    :cond_2
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->finish()V

    .line 663
    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 365
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Tag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mTag:Ljava/lang/String;

    .line 367
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Option"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mOption:I

    .line 368
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Status"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mStatus:I

    .line 369
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DialogStyle"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogStyle:I

    .line 370
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mTitle:Ljava/lang/String;

    .line 371
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mMessage:Ljava/lang/String;

    .line 372
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Description"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDescription:Ljava/lang/String;

    .line 373
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ScrollEnable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mScrollEnable:Z

    .line 374
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ButtonStyle"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mButtonStyle:I

    .line 375
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Button1_Text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mButton1_Text:Ljava/lang/String;

    .line 376
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Button2_Text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mButton2_Text:Ljava/lang/String;

    .line 377
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Button3_Text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mButton3_Text:Ljava/lang/String;

    .line 378
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AcquirePower"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAcquirePower:Z

    .line 379
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DisableKeyGuard"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDisableKeyGuard:Z

    .line 380
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AutoCloseDialogTime"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAutoCloseDialogTime:I

    .line 381
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AutoResumeForegroundTime"

    const/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAutoResumeForegroundTime:I

    .line 382
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DialogMessageChangeTime"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogMessageChangeTime:I

    .line 383
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DialogPreString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogPreString:Ljava/lang/String;

    .line 384
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DialogPostString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogPostString:Ljava/lang/String;

    .line 385
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AutoReturnHomeScreen"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAutoReturnHomeScreen:Z

    .line 386
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AutoFinishActivity"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAutoFinishActivity:Z

    .line 387
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ProgressBarMaxSize"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarMaxSize:I

    .line 388
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ProgressBarCurrentSize"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarCurrentSize:I

    .line 389
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "QueuePriority"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mQueuePriority:I

    .line 390
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DisableBackKey"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDisableBackKey:Z

    .line 391
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DisableSearchKey"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDisableSearchKey:Z

    .line 392
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DisableTouchEvent"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDisableTouchEvent:Z

    .line 393
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "OOBECase"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/omadm/gui/ext/BaseDialog;->mOOBECase:Z

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mUri:Landroid/net/Uri;

    .line 397
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mTitle:Ljava/lang/String;

    const-string v1, "Hands Free Activation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mMessage:Ljava/lang/String;

    const-string v1, "Contacting network..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const-string v0, "libgo"

    const-string v1, "bHFA_flag = true"

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iput-boolean v4, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->bHFA_flag:Z

    .line 405
    :cond_0
    return-void
.end method

.method private logView(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 980
    const-string v0, "libgo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mOption:I

    invoke-direct {p0, v2}, Lcom/htc/omadm/gui/ext/BaseDialog;->converOptionAndStatus(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mOption:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mStatus:I

    invoke-direct {p0, v2}, Lcom/htc/omadm/gui/ext/BaseDialog;->converOptionAndStatus(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    return-void
.end method

.method private onChangeCallState(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 524
    sput-boolean p1, Lcom/htc/omadm/prop/PropertyState;->FLAG_CALL_STATE_IDLE:Z

    .line 525
    return-void
.end method

.method private sendButtonCallback(I)V
    .locals 5
    .parameter "buttonIdentifier"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 622
    const-string v0, "libgo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendButtonCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    packed-switch p1, :pswitch_data_0

    .line 651
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 625
    :pswitch_1
    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mQueuePriority:I

    if-ne v0, v3, :cond_1

    .line 626
    const-string v0, "com.htc.andorid.omadm.gui.callback.normal.positive"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->sendCallback(Ljava/lang/String;)V

    .line 627
    :cond_1
    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mQueuePriority:I

    if-ne v0, v4, :cond_0

    .line 628
    const-string v0, "com.htc.andorid.omadm.gui.callback.high.positive"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->sendCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 631
    :pswitch_2
    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mQueuePriority:I

    if-ne v0, v3, :cond_2

    .line 632
    const-string v0, "com.htc.andorid.omadm.gui.callback.normal.negative"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->sendCallback(Ljava/lang/String;)V

    .line 633
    :cond_2
    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mQueuePriority:I

    if-ne v0, v4, :cond_0

    .line 634
    const-string v0, "com.htc.andorid.omadm.gui.callback.high.negative"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->sendCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :pswitch_3
    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mQueuePriority:I

    if-ne v0, v3, :cond_3

    .line 638
    const-string v0, "com.htc.andorid.omadm.gui.callback.normal.neutral"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->sendCallback(Ljava/lang/String;)V

    .line 639
    :cond_3
    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mQueuePriority:I

    if-ne v0, v4, :cond_0

    .line 640
    const-string v0, "com.htc.andorid.omadm.gui.callback.high.neutral"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->sendCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 643
    :pswitch_4
    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mQueuePriority:I

    if-ne v0, v3, :cond_4

    .line 644
    const-string v0, "com.htc.andorid.omadm.gui.callback.normal.back"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->sendCallback(Ljava/lang/String;)V

    .line 645
    :cond_4
    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mQueuePriority:I

    if-ne v0, v4, :cond_0

    .line 646
    const-string v0, "com.htc.andorid.omadm.gui.callback.high.back"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->sendCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 623
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private sendCallback(Ljava/lang/String;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 603
    iget-boolean v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mCallbackFlag:Z

    if-eqz v1, :cond_0

    .line 604
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mCallbackFlag:Z

    .line 606
    const-string v1, " sendCallback"

    invoke-direct {p0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V

    .line 607
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mUri:Landroid/net/Uri;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 608
    .local v0, callbackIntent:Landroid/content/Intent;
    const-string v1, "status"

    iget v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 609
    const-string v1, "option"

    iget v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mOption:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 610
    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 613
    sget-boolean v1, Lcom/htc/omadm/gui/ext/BaseDialog;->mOOBECase:Z

    if-eqz v1, :cond_0

    .line 614
    iget v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mOption:I

    iget v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mStatus:I

    invoke-static {v1, v2, p1}, Lcom/htc/omadm/rule/Rule;->updateSessionStateByGUI(IILjava/lang/String;)V

    .line 618
    .end local v0           #callbackIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private setDialogMessageChangeMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 469
    iput-boolean p1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogMessageChangeMode:Z

    .line 470
    return-void
.end method

.method private setEnableProgressBar(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 473
    sput-boolean p1, Lcom/htc/omadm/prop/PropertyState;->UI_PROGRESS_BAR_ENABLE:Z

    .line 474
    return-void
.end method

.method private setResumeMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 465
    iput-boolean p1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mResumeMode:Z

    .line 466
    return-void
.end method

.method private setScreenAlwaysOn(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    const v5, 0x3000000a

    const/4 v4, 0x0

    .line 535
    if-eqz p1, :cond_1

    sget-boolean v1, Lcom/htc/omadm/gui/ext/BaseDialog;->hasAcquirePower:Z

    if-nez v1, :cond_1

    .line 536
    const-string v1, "libgo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenAlwaysOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getApplicationContext()Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 540
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "libgo"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->wl:Landroid/os/PowerManager$WakeLock;

    .line 543
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 545
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/omadm/gui/ext/BaseDialog;->hasAcquirePower:Z

    .line 567
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    if-nez p1, :cond_0

    sget-boolean v1, Lcom/htc/omadm/gui/ext/BaseDialog;->hasAcquirePower:Z

    if-eqz v1, :cond_0

    .line 548
    const-string v1, "libgo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenAlwaysOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->wl:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_2

    .line 551
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getApplicationContext()Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 553
    .restart local v0       #pm:Landroid/os/PowerManager;
    const-string v1, "libgo"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->wl:Landroid/os/PowerManager$WakeLock;

    .line 557
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    sput-boolean v4, Lcom/htc/omadm/gui/ext/BaseDialog;->hasAcquirePower:Z

    goto :goto_0

    .line 558
    :catch_0
    move-exception v1

    .line 564
    sput-boolean v4, Lcom/htc/omadm/gui/ext/BaseDialog;->hasAcquirePower:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    sput-boolean v4, Lcom/htc/omadm/gui/ext/BaseDialog;->hasAcquirePower:Z

    throw v1
.end method

.method private setupFinishFunction()V
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAutoReturnHomeScreen:Z

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->checkAutoReturnHomeScreen(Z)V

    .line 419
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAutoFinishActivity:Z

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->checkAutoFinishActivity(Z)V

    .line 420
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->checkDialogMessageChangeTimer()V

    .line 421
    return-void
.end method

.method private setupInitFunction()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 408
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAcquirePower:Z

    if-eqz v0, :cond_0

    .line 409
    invoke-direct {p0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->setScreenAlwaysOn(Z)V

    .line 410
    :cond_0
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDisableKeyGuard:Z

    if-eqz v0, :cond_1

    .line 411
    invoke-direct {p0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->disableKeyGuard(Z)V

    .line 412
    :cond_1
    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAutoCloseDialogTime:I

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->checkAutoCloseDialog(I)V

    .line 413
    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAutoResumeForegroundTime:I

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->checkAutoResumeForeground(I)V

    .line 414
    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogMessageChangeTime:I

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->checkDialogMessageChange(I)V

    .line 415
    return-void
.end method

.method private showNewDialog()V
    .locals 1

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->initData()V

    .line 439
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->setupInitFunction()V

    .line 440
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->clearShowingDialog()V

    .line 441
    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogStyle:I

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->showDialog(I)V

    .line 442
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->updateProgressBarDialog()V

    .line 443
    return-void
.end method

.method private startRegisterReceiver()V
    .locals 2

    .prologue
    .line 424
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 425
    .local v0, intentfilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.andorid.omadm.gui.inform.normal.close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    const-string v1, "com.htc.andorid.omadm.gui.inform.high.close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    const-string v1, "com.htc.andorid.omadm.gui.inform.progressbar.close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    const-string v1, "com.htc.andorid.omadm.dmexist"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 430
    return-void
.end method

.method private updateProgressBarDialog()V
    .locals 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 456
    const-string v0, "libgo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarCurrentSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarDialog:Lcom/htc/app/HtcProgressDialog;

    iget v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarCurrentSize:I

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 459
    :cond_0
    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarCurrentSize:I

    iget v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarMaxSize:I

    if-lt v0, v1, :cond_1

    .line 462
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x400

    const/4 v5, 0x1

    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/ext/BaseDialog;->setRequestedOrientation(I)V

    .line 213
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 218
    :try_start_0
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->Open()V

    .line 219
    iget v3, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogStyle:I

    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/ext/BaseDialog;->showDialog(I)V

    .line 221
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/ext/BaseDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 222
    .local v2, teleManager:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 224
    iget-boolean v3, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->bHFA_flag:Z

    if-ne v3, v5, :cond_0

    .line 225
    iget-boolean v3, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->bAlreadySendUIOOBEIntent:Z

    if-ne v3, v5, :cond_0

    .line 226
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->bAlreadySendUIOOBEIntent:Z

    .line 227
    invoke-static {p0}, Lcom/htc/omadm/core/DeviceNotifyReceiver;->hasOOBE(Landroid/content/Context;)Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 228
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->checkInit()Z

    move-result v3

    if-nez v3, :cond_1

    .line 230
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.omadm.core.oobenotifyready"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 233
    const-string v3, "libgo"

    const-string v4, "Start service for OOBE. (no factory init.)"

    invoke-static {v3, v4}, Lcom/htc/omadm/gui/ext/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #teleManager:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 235
    .restart local v2       #teleManager:Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v3

    sget v4, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_RUNNING:I

    if-lt v3, v4, :cond_2

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v3

    sget v4, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOADED:I

    if-ge v3, v4, :cond_2

    .line 237
    const-string v3, "libgo"

    const-string v4, "Dm is running, no need to start service."

    invoke-static {v3, v4}, Lcom/htc/omadm/gui/ext/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    .end local v2           #teleManager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 240
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #teleManager:Landroid/telephony/TelephonyManager;
    :cond_2
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.omadm.core.oobenotifyready"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .restart local v1       #i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 243
    const-string v3, "libgo"

    const-string v4, "Start service for OOBE. (with factory init.)"

    invoke-static {v3, v4}, Lcom/htc/omadm/gui/ext/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 330
    const-string v0, "libgo"

    const-string v1, "onCreateDialog"

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    packed-switch p1, :pswitch_data_0

    .line 343
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 334
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->setAlertDialog()V

    .line 335
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 337
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->setProgressDialog()V

    .line 338
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 340
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->setProgressBarDialog()V

    .line 341
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 308
    const-string v0, " onDestroy()"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V

    .line 309
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->Close()V

    .line 310
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 311
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 316
    const-string v0, "onNewIntent()"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V

    .line 317
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 318
    sput-boolean v1, Lcom/htc/omadm/prop/PropertyState;->FLAG_RETRY_RESUME_UI_TO_FOREGROUND:Z

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mCallbackFlag:Z

    .line 320
    invoke-direct {p0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->setResumeMode(Z)V

    .line 321
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0, p1}, Lcom/htc/omadm/gui/ext/BaseDialog;->setIntent(Landroid/content/Intent;)V

    .line 323
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->showNewDialog()V

    .line 325
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 273
    const-string v0, " onPause()"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V

    .line 274
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 275
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 295
    const-string v0, " onRestart()"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V

    .line 296
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mResumeMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 298
    const-string v0, " UI restart, cancel resume timer"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V

    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->setResumeMode(Z)V

    .line 300
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseDialog;->StopAutoResumeForegroundTimer()V

    .line 302
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 303
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 264
    const-string v0, "onResume()"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V

    .line 265
    sput-boolean v1, Lcom/htc/omadm/prop/PropertyState;->FLAG_RETRY_RESUME_UI_TO_FOREGROUND:Z

    .line 266
    sput-boolean v1, Lcom/htc/omadm/prop/PropertyState;->FLAG_RETRY_START_UI_ACTIVITY:Z

    .line 267
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 268
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 257
    const-string v0, "onStart()"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V

    .line 258
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 259
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 280
    const-string v0, " onStop()"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V

    .line 281
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mCallbackFlag:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mResumeMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mPhoneMode:Z

    if-nez v0, :cond_0

    .line 283
    const-string v0, " UI stop, start resume timer"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V

    .line 284
    invoke-direct {p0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->setResumeMode(Z)V

    .line 286
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAutoResumeForegroundTimer:Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAutoResumeForegroundTimer:Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;

    invoke-virtual {v0}, Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;->start()Landroid/os/CountDownTimer;

    .line 289
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 290
    return-void
.end method

.method public setAlertDialog()V
    .locals 2

    .prologue
    .line 667
    const-string v0, " setAlertDialog"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 669
    const-string v0, "libgo"

    const-string v1, "Dismiss AlertDialog."

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 672
    :cond_0
    new-instance v0, Lcom/htc/omadm/gui/ext/BaseDialog$6;

    invoke-direct {v0, p0, p0}, Lcom/htc/omadm/gui/ext/BaseDialog$6;-><init>(Lcom/htc/omadm/gui/ext/BaseDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 697
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 698
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 699
    const-string v0, "libgo"

    const-string v1, "setCanceledOnTouchOutside"

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 701
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->appendExternalView(Lcom/htc/widget/HtcAlertDialog;)V

    .line 702
    return-void
.end method

.method public setProgressBarDialog()V
    .locals 2

    .prologue
    .line 745
    const-string v0, " setProgressBarDialog"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 747
    const-string v0, "libgo"

    const-string v1, "Dismiss ProgressBarDialog."

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 750
    :cond_0
    new-instance v0, Lcom/htc/omadm/gui/ext/BaseDialog$8;

    invoke-direct {v0, p0, p0}, Lcom/htc/omadm/gui/ext/BaseDialog$8;-><init>(Lcom/htc/omadm/gui/ext/BaseDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarDialog:Lcom/htc/app/HtcProgressDialog;

    .line 775
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 776
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 777
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 778
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarDialog:Lcom/htc/app/HtcProgressDialog;

    iget v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarMaxSize:I

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 779
    const-string v0, "libgo"

    const-string v1, "setCanceledOnTouchOutside"

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 781
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressBarDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->appendButton(Lcom/htc/widget/HtcAlertDialog;)V

    .line 782
    return-void
.end method

.method public setProgressDialog()V
    .locals 2

    .prologue
    .line 706
    const-string v0, " setProgressDialog"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 708
    const-string v0, "libgo"

    const-string v1, "Dismiss ProgressDialog."

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 711
    :cond_0
    new-instance v0, Lcom/htc/omadm/gui/ext/BaseDialog$7;

    invoke-direct {v0, p0, p0}, Lcom/htc/omadm/gui/ext/BaseDialog$7;-><init>(Lcom/htc/omadm/gui/ext/BaseDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 736
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 738
    const-string v0, "libgo"

    const-string v1, "setCanceledOnTouchOutside"

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 740
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->appendButton(Lcom/htc/widget/HtcAlertDialog;)V

    .line 741
    return-void
.end method
