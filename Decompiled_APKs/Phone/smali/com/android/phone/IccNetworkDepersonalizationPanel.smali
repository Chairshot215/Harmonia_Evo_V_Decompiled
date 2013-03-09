.class public Lcom/android/phone/IccNetworkDepersonalizationPanel;
.super Lcom/android/phone/IccPanel;
.source "IccNetworkDepersonalizationPanel.java"


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_GET_SUBSIDY_LOCK_DONE:I = 0x96

.field private static final EVENT_ICC_NTWRK_DEPERSONALIZATION_RESULT:I = 0x64

.field private static final PHONE_STATE_CHANGED:I = 0x65

.field private static final TYPE_CORPORATE:I = 0x8

.field private static final TYPE_IMSI:I = 0x10

.field private static final TYPE_MAX:I = 0x20

.field private static final TYPE_NETWORK:I = 0x1

.field private static final TYPE_NETWORK_SUBSET:I = 0x2

.field private static final TYPE_SERVICE_PROVIDER:I = 0x4


# instance fields
.field private mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDismissButton:Landroid/widget/Button;

.field mDismissListener:Landroid/view/View$OnClickListener;

.field private mEntryPanel:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinEntry:Landroid/widget/EditText;

.field private mPinEntryWatcher:Landroid/text/TextWatcher;

.field private mRetryCount:I

.field private mStatusPanel:Landroid/widget/LinearLayout;

.field private mStatusText:Landroid/widget/TextView;

.field private mSubsidyType:I

.field private mUnlockButton:Landroid/widget/Button;

.field mUnlockListener:Landroid/view/View$OnClickListener;

.field private mUnlockWhich:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I

    .line 106
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 122
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 297
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 345
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 423
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$5;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$5;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "subsidyType"

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I

    .line 106
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 122
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 297
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 345
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 423
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$5;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$5;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 215
    invoke-direct {p0, p2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->processSubsidyLockType(I)V

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateError()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateBusy()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/IccNetworkDepersonalizationPanel;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->showEccErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I

    return v0
.end method

.method static synthetic access$208(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->hideAlert()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->processSubsidyLockType(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateSuccess()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mSubsidyType:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockWhich:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->setupHeaderText(I)V

    return-void
.end method

.method private hideAlert()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    return-void
.end method

.method private indicateBusy()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0e0282

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 320
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    return-void
.end method

.method private indicateError()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0e0283

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 326
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    return-void
.end method

.method private indicateSuccess()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 332
    iput v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I

    .line 334
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0e0284

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 335
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 337
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 432
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccNetworkDepersonalizationPanel] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void
.end method

.method private processSubsidyLockType(I)V
    .locals 2
    .parameter "subsidyType"

    .prologue
    .line 387
    iput p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mSubsidyType:I

    .line 388
    if-lez p1, :cond_2

    .line 389
    const/4 v0, 0x1

    .local v0, typeMask:I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 390
    and-int v1, p1, v0

    if-eqz v1, :cond_1

    .line 391
    and-int v1, p1, v0

    iput v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockWhich:I

    .line 399
    .end local v0           #typeMask:I
    :cond_0
    :goto_1
    return-void

    .line 389
    .restart local v0       #typeMask:I
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    .end local v0           #typeMask:I
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockWhich:I

    goto :goto_1
.end method

.method private setupHeaderText(I)V
    .locals 2
    .parameter "currentUnlcokType"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 403
    sparse-switch p1, :sswitch_data_0

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 405
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e0089

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 408
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e008a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 411
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e008b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 414
    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e008c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 417
    :sswitch_4
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e027f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 403
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private showEccErrorDialog(Ljava/lang/String;)V
    .locals 6
    .parameter "number"

    .prologue
    const/4 v5, 0x1

    .line 371
    invoke-virtual {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e03c4

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, message:Ljava/lang/CharSequence;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x108009b

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e03c1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e004a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 379
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d7

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 380
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 381
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 382
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/android/phone/IccPanel;->onCreate(Landroid/os/Bundle;)V

    .line 222
    const v2, 0x7f030055

    invoke-virtual {p0, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->setContentView(I)V

    .line 225
    const v2, 0x7f08013a

    invoke-virtual {p0, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHeaderText:Landroid/widget/TextView;

    .line 226
    iget v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockWhich:I

    invoke-direct {p0, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->setupHeaderText(I)V

    .line 229
    const v2, 0x7f08013b

    invoke-virtual {p0, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    .line 230
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 236
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .local v1, text:Ljava/lang/CharSequence;
    move-object v0, v1

    .line 237
    check-cast v0, Landroid/text/Spannable;

    .line 238
    .local v0, span:Landroid/text/Spannable;
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x12

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 240
    const v2, 0x7f080139

    invoke-virtual {p0, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    .line 242
    const v2, 0x7f08013c

    invoke-virtual {p0, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    .line 243
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    const v2, 0x7f08013d

    invoke-virtual {p0, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    .line 260
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    const v2, 0x7f08013e

    invoke-virtual {p0, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    .line 265
    const v2, 0x7f08013f

    invoke-virtual {p0, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    .line 267
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 270
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 273
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 275
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 284
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 291
    :cond_0
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/IccPanel;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 279
    invoke-super {p0}, Lcom/android/phone/IccPanel;->onStart()V

    .line 280
    return-void
.end method
