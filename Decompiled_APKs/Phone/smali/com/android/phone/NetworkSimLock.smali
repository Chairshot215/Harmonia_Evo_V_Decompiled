.class public Lcom/android/phone/NetworkSimLock;
.super Landroid/app/Activity;
.source "NetworkSimLock.java"


# static fields
.field private static final ENABLE_ICC_PIN_COMPLETE:I = 0x64

.field private static final FAIL_RETRIES_BEFFORE_PENALITY:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkSimLock"

.field private static final NETWORK_LOCK_NETWORK:I = 0x1

.field private static final NETWORK_LOCK_NETWORK_SUBSET:I = 0x2

.field private static final NETWORK_LOCK_PIN_LENGTH:I = 0x8

.field private static final NETWORK_LOCK_SERVICE_CORPORATE:I = 0x8

.field private static final NETWORK_LOCK_SERVICE_IMSI:I = 0x10

.field private static final NETWORK_LOCK_SERVICE_PROVIDER:I = 0x4

.field private static final NULL_STRING:I = 0xffff

.field private static final QUERY_OTHER_SUBSIDYLOCK:I = 0x67

.field private static final QUERY_SUBSIDYLOCK:I = 0x66

.field private static final TIME_OUT_COMPLETE:I = 0x65

.field private static final TYPE_MAX:I = 0x20

.field private static mCheckSave:Landroid/widget/Button;

.field private static mHeaderText:Landroid/widget/TextView;

.field private static mReboot:Z

.field private static mSimLockCount:I

.field private static mSimLockTimer:Z

.field private static mTestCount:I

.field private static mTitleText:Landroid/widget/TextView;

.field private static mUnlockType:I


# instance fields
.field delayTime:J

.field private mChannelName:Landroid/widget/EditText;

.field private mCheckCancel:Landroid/widget/Button;

.field public mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mRebootDialog:Lcom/htc/app/HtcProgressDialog;

.field private mSimLock:Z

.field private mTasks:Ljava/lang/Runnable;

.field private mThread:Ljava/lang/Thread;

.field private networkLockType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    sput v0, Lcom/android/phone/NetworkSimLock;->mSimLockCount:I

    .line 69
    sput-boolean v0, Lcom/android/phone/NetworkSimLock;->mSimLockTimer:Z

    .line 89
    sput-boolean v0, Lcom/android/phone/NetworkSimLock;->mReboot:Z

    .line 91
    sput v0, Lcom/android/phone/NetworkSimLock;->mTestCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    new-instance v0, Lcom/android/phone/NetworkSimLock$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSimLock$1;-><init>(Lcom/android/phone/NetworkSimLock;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSimLock;->mHandler:Landroid/os/Handler;

    .line 304
    new-instance v0, Lcom/android/phone/NetworkSimLock$7;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSimLock$7;-><init>(Lcom/android/phone/NetworkSimLock;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSimLock;->mTasks:Ljava/lang/Runnable;

    return-void
.end method

.method private CurrentNetworkLockType(I)V
    .locals 4
    .parameter "networkLockType"

    .prologue
    .line 517
    if-lez p1, :cond_2

    .line 518
    const/4 v0, 0x1

    .local v0, typeMask:I
    :goto_0
    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 519
    and-int v1, p1, v0

    if-eqz v1, :cond_1

    .line 520
    and-int v1, p1, v0

    sput v1, Lcom/android/phone/NetworkSimLock;->mUnlockType:I

    .line 521
    const-string v1, "NetworkSimLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentNetworkLockType, mUnlockType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/NetworkSimLock;->mUnlockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    .end local v0           #typeMask:I
    :cond_0
    :goto_1
    return-void

    .line 518
    .restart local v0       #typeMask:I
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 526
    .end local v0           #typeMask:I
    :cond_2
    const/4 v1, 0x0

    sput v1, Lcom/android/phone/NetworkSimLock;->mUnlockType:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkSimLock;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSimLock;->iccLockChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkSimLock;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSimLock;->CurrentNetworkLockType(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/NetworkSimLock;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/android/phone/NetworkSimLock;->mSimLockCount:I

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-boolean p0, Lcom/android/phone/NetworkSimLock;->mSimLockTimer:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/phone/NetworkSimLock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/NetworkSimLock;->rebootDevice()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/NetworkSimLock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/NetworkSimLock;->processTitle()V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/android/phone/NetworkSimLock;->mUnlockType:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkSimLock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/phone/NetworkSimLock;->mSimLock:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/NetworkSimLock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/phone/NetworkSimLock;->mSimLock:Z

    return p1
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/phone/NetworkSimLock;->mReboot:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/NetworkSimLock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/NetworkSimLock;->processUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/NetworkSimLock;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSimLock;->rebootDeviceDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/NetworkSimLock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/NetworkSimLock;->unlockOthersTypeLockDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/NetworkSimLock;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mChannelName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/NetworkSimLock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private iccLockChanged(Z)V
    .locals 4
    .parameter "success"

    .prologue
    const/4 v3, 0x0

    .line 358
    const-string v0, "NetworkSimLock"

    const-string v1, "iccLockChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NetworkSimLock;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 364
    :cond_0
    if-eqz p1, :cond_1

    .line 366
    sput v3, Lcom/android/phone/NetworkSimLock;->mSimLockCount:I

    .line 367
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/NetworkSimLock;->mReboot:Z

    .line 369
    const-string v0, "NetworkSimLock"

    const-string v1, "QUERY_OTHER_SUBSIDYLOCK, Begin..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/NetworkSimLock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->getSubsidyLock(ILandroid/os/Message;)V

    .line 403
    :goto_0
    return-void

    .line 389
    :cond_1
    sget v0, Lcom/android/phone/NetworkSimLock;->mSimLockCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/phone/NetworkSimLock;->mSimLockCount:I

    .line 397
    invoke-virtual {p0}, Lcom/android/phone/NetworkSimLock;->disableButton()V

    .line 398
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/phone/NetworkSimLock;->mTasks:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSimLock;->mThread:Ljava/lang/Thread;

    .line 399
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 400
    const v0, 0x7f0e049c

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSimLock;->displayInfo(I)V

    goto :goto_0
.end method

.method private processSubsidyLockType(I)Z
    .locals 7
    .parameter "subsidyType"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 482
    const-string v4, "NetworkSimLock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[processSubsidyLockType] subsidyType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    if-lez p1, :cond_2

    .line 486
    const/4 v1, 0x1

    .local v1, typeMask:I
    :goto_0
    const/16 v4, 0x20

    if-ge v1, v4, :cond_2

    .line 488
    and-int v4, p1, v1

    if-eqz v4, :cond_1

    .line 490
    and-int v0, p1, v1

    .line 491
    .local v0, mUnlockWhich:I
    if-ne v0, v2, :cond_0

    .line 498
    .end local v0           #mUnlockWhich:I
    .end local v1           #typeMask:I
    :goto_1
    return v2

    .restart local v0       #mUnlockWhich:I
    .restart local v1       #typeMask:I
    :cond_0
    move v2, v3

    .line 494
    goto :goto_1

    .line 486
    .end local v0           #mUnlockWhich:I
    :cond_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #typeMask:I
    :cond_2
    move v2, v3

    .line 498
    goto :goto_1
.end method

.method private processTitle()V
    .locals 4

    .prologue
    .line 531
    const/4 v0, 0x0

    .line 533
    .local v0, headerText:Ljava/lang/CharSequence;
    sget v1, Lcom/android/phone/NetworkSimLock;->mUnlockType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 534
    const v1, 0x20c0180

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSimLock;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 547
    :goto_0
    sget-object v1, Lcom/android/phone/NetworkSimLock;->mTitleText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 548
    sget-object v1, Lcom/android/phone/NetworkSimLock;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    :cond_0
    return-void

    .line 535
    :cond_1
    sget v1, Lcom/android/phone/NetworkSimLock;->mUnlockType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 536
    const v1, 0x20c0181

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSimLock;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 537
    :cond_2
    sget v1, Lcom/android/phone/NetworkSimLock;->mUnlockType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 538
    const v1, 0x20c0182

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSimLock;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 539
    :cond_3
    sget v1, Lcom/android/phone/NetworkSimLock;->mUnlockType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 540
    const v1, 0x20c0183

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSimLock;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 541
    :cond_4
    sget v1, Lcom/android/phone/NetworkSimLock;->mUnlockType:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 542
    const v1, 0x20c0184

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSimLock;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 544
    :cond_5
    const-string v1, "NetworkSimLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUnlockType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/NetworkSimLock;->mUnlockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is wrong!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processUI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 178
    iget-boolean v2, p0, Lcom/android/phone/NetworkSimLock;->mSimLock:Z

    if-nez v2, :cond_0

    .line 182
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 184
    invoke-virtual {p0}, Lcom/android/phone/NetworkSimLock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0498

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 185
    invoke-virtual {p0}, Lcom/android/phone/NetworkSimLock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e049b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 186
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 187
    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 188
    const v2, 0x7f0e02bb

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSimLock;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/NetworkSimLock$2;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkSimLock$2;-><init>(Lcom/android/phone/NetworkSimLock;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 193
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 194
    .local v1, dlg:Landroid/app/Dialog;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 249
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #dlg:Landroid/app/Dialog;
    :goto_0
    return-void

    .line 199
    :cond_0
    const v2, 0x7f030044

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSimLock;->setContentView(I)V

    .line 200
    const v2, 0x7f08004a

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSimLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/NetworkSimLock;->mChannelName:Landroid/widget/EditText;

    .line 201
    const v2, 0x7f08010f

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSimLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/phone/NetworkSimLock;->mHeaderText:Landroid/widget/TextView;

    .line 203
    const v2, 0x7f080051

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSimLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/phone/NetworkSimLock;->mTitleText:Landroid/widget/TextView;

    .line 204
    invoke-direct {p0}, Lcom/android/phone/NetworkSimLock;->processTitle()V

    .line 206
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock;->mChannelName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 207
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock;->mChannelName:Landroid/widget/EditText;

    new-array v3, v4, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 209
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock;->mChannelName:Landroid/widget/EditText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 210
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock;->mChannelName:Landroid/widget/EditText;

    const-string v3, "0123456789"

    invoke-static {v3}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 212
    const v2, 0x7f080112

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSimLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/NetworkSimLock;->mCheckCancel:Landroid/widget/Button;

    .line 213
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock;->mCheckCancel:Landroid/widget/Button;

    new-instance v3, Lcom/android/phone/NetworkSimLock$3;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkSimLock$3;-><init>(Lcom/android/phone/NetworkSimLock;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    const v2, 0x7f080111

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSimLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sput-object v2, Lcom/android/phone/NetworkSimLock;->mCheckSave:Landroid/widget/Button;

    .line 226
    sget-object v2, Lcom/android/phone/NetworkSimLock;->mCheckSave:Landroid/widget/Button;

    new-instance v3, Lcom/android/phone/NetworkSimLock$4;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkSimLock$4;-><init>(Lcom/android/phone/NetworkSimLock;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private rebootDevice()V
    .locals 3

    .prologue
    .line 407
    const-string v1, "NetworkSimLock"

    const-string v2, "rebootDevice!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, p0, Lcom/android/phone/NetworkSimLock;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 409
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method private rebootDeviceDialog(I)V
    .locals 4
    .parameter "strId"

    .prologue
    .line 445
    const v1, 0x7f0e04a2

    invoke-virtual {p0, p1, v1}, Lcom/android/phone/NetworkSimLock;->displayProgressDialog(II)V

    .line 446
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 447
    .local v0, timeout:Landroid/os/Handler;
    new-instance v1, Lcom/android/phone/NetworkSimLock$8;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkSimLock$8;-><init>(Lcom/android/phone/NetworkSimLock;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 452
    return-void
.end method

.method private simLockUI()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 253
    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSimLock;->setContentView(I)V

    .line 254
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSimLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/NetworkSimLock;->mChannelName:Landroid/widget/EditText;

    .line 255
    const v0, 0x7f08010f

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSimLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/android/phone/NetworkSimLock;->mHeaderText:Landroid/widget/TextView;

    .line 257
    const v0, 0x7f080051

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSimLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/android/phone/NetworkSimLock;->mTitleText:Landroid/widget/TextView;

    .line 258
    invoke-direct {p0}, Lcom/android/phone/NetworkSimLock;->processTitle()V

    .line 260
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mChannelName:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 261
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mChannelName:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 263
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mChannelName:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 264
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mChannelName:Landroid/widget/EditText;

    const-string v1, "0123456789"

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 266
    const v0, 0x7f080112

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSimLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/NetworkSimLock;->mCheckCancel:Landroid/widget/Button;

    .line 267
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mCheckCancel:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/NetworkSimLock$5;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkSimLock$5;-><init>(Lcom/android/phone/NetworkSimLock;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    const v0, 0x7f080111

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSimLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/phone/NetworkSimLock;->mCheckSave:Landroid/widget/Button;

    .line 280
    sget-object v0, Lcom/android/phone/NetworkSimLock;->mCheckSave:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/NetworkSimLock$6;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkSimLock$6;-><init>(Lcom/android/phone/NetworkSimLock;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    return-void
.end method

.method private unlockOthersTypeLockDialog()V
    .locals 4

    .prologue
    .line 457
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 458
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 459
    invoke-virtual {p0}, Lcom/android/phone/NetworkSimLock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0284

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 460
    invoke-virtual {p0}, Lcom/android/phone/NetworkSimLock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e04a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 461
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 462
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 463
    const v2, 0x7f0e0400

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSimLock;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/NetworkSimLock$9;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkSimLock$9;-><init>(Lcom/android/phone/NetworkSimLock;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 469
    const v2, 0x7f0e0401

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSimLock;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/NetworkSimLock$10;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkSimLock$10;-><init>(Lcom/android/phone/NetworkSimLock;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 475
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 476
    .local v1, dlg:Landroid/app/Dialog;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 477
    return-void
.end method

.method private updateNetworkLockType()V
    .locals 4

    .prologue
    .line 504
    const-string v0, "NetworkSimLock"

    const-string v1, "updateNetworkLockType, Begin..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/NetworkSimLock;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getSubsidyLock(ILandroid/os/Message;)V

    .line 514
    return-void
.end method


# virtual methods
.method public disableButton()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 344
    sget-object v0, Lcom/android/phone/NetworkSimLock;->mCheckSave:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 345
    sget-object v0, Lcom/android/phone/NetworkSimLock;->mCheckSave:Landroid/widget/Button;

    const v1, -0x99999a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 346
    sget-object v0, Lcom/android/phone/NetworkSimLock;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/NetworkSimLock;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e049e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/phone/NetworkSimLock;->mSimLockCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    sget-object v0, Lcom/android/phone/NetworkSimLock;->mCheckSave:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 349
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mChannelName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 350
    return-void
.end method

.method public displayInfo(I)V
    .locals 2
    .parameter "strId"

    .prologue
    .line 567
    invoke-virtual {p0, p1}, Lcom/android/phone/NetworkSimLock;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 569
    return-void
.end method

.method public displayProgressDialog(II)V
    .locals 3
    .parameter "title"
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 555
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSimLock;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 556
    const v0, 0xffff

    if-eq p1, v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/phone/NetworkSimLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0, p2}, Lcom/android/phone/NetworkSimLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 560
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 561
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 562
    return-void
.end method

.method public enableButton()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 332
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NetworkSimLock;->mThread:Ljava/lang/Thread;

    .line 334
    sget-object v0, Lcom/android/phone/NetworkSimLock;->mCheckSave:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 336
    sget-object v0, Lcom/android/phone/NetworkSimLock;->mCheckSave:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 337
    sget-object v0, Lcom/android/phone/NetworkSimLock;->mCheckSave:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 338
    sget-object v0, Lcom/android/phone/NetworkSimLock;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e0499

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 340
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    const/4 v1, 0x1

    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSimLock;->requestWindowFeature(I)Z

    .line 157
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSimLock;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 158
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSimLock;->mContext:Landroid/content/Context;

    .line 160
    sget-boolean v0, Lcom/android/phone/NetworkSimLock;->mSimLockTimer:Z

    if-eqz v0, :cond_2

    .line 162
    iput-boolean v1, p0, Lcom/android/phone/NetworkSimLock;->mSimLock:Z

    .line 163
    invoke-direct {p0}, Lcom/android/phone/NetworkSimLock;->simLockUI()V

    .line 169
    :goto_0
    sget-boolean v0, Lcom/android/phone/NetworkSimLock;->mSimLockTimer:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/phone/NetworkSimLock;->disableButton()V

    .line 172
    :cond_0
    sget-boolean v0, Lcom/android/phone/NetworkSimLock;->mReboot:Z

    if-eqz v0, :cond_1

    .line 173
    const v0, 0x7f0e049b

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSimLock;->rebootDeviceDialog(I)V

    .line 174
    :cond_1
    return-void

    .line 166
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/NetworkSimLock;->updateNetworkLockType()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 354
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 355
    return-void
.end method
