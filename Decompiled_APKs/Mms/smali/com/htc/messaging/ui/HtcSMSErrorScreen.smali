.class public Lcom/htc/messaging/ui/HtcSMSErrorScreen;
.super Landroid/app/Activity;
.source "HtcSMSErrorScreen.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "HtcSMSErrorScreen"


# instance fields
.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSMSErrorCause:I

.field private mSMSErrorClass:I

.field private mSMSErrorMessage:Ljava/lang/String;

.field private smsErrorCauseDialog:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    new-instance v0, Lcom/htc/messaging/ui/HtcSMSErrorScreen$3;

    invoke-direct {v0, p0}, Lcom/htc/messaging/ui/HtcSMSErrorScreen$3;-><init>(Lcom/htc/messaging/ui/HtcSMSErrorScreen;)V

    iput-object v0, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/messaging/ui/HtcSMSErrorScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->mSMSErrorCause:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/messaging/ui/HtcSMSErrorScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->mSMSErrorClass:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/messaging/ui/HtcSMSErrorScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->updateCallState(I)V

    return-void
.end method

.method private final updateCallState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const-string v3, "HtcSMSErrorScreen"

    const-string v4, "Created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 50
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "errorMessage"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, errorMessageArray:[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 54
    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 55
    .local v0, errorCodeArray:[I
    aget-object v3, v1, v6

    iput-object v3, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->mSMSErrorMessage:Ljava/lang/String;

    .line 57
    aget v3, v0, v6

    iput v3, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->mSMSErrorCause:I

    .line 58
    const/4 v3, 0x1

    aget v3, v0, v3

    iput v3, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->mSMSErrorClass:I

    .line 59
    const-string v3, "HtcSMSErrorScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->mSMSErrorMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error Cause "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->mSMSErrorCause:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Error Class:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->mSMSErrorClass:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0901ab

    invoke-virtual {p0, v4}, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0200d1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->mSMSErrorMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c015f

    new-instance v5, Lcom/htc/messaging/ui/HtcSMSErrorScreen$2;

    invoke-direct {v5, p0}, Lcom/htc/messaging/ui/HtcSMSErrorScreen$2;-><init>(Lcom/htc/messaging/ui/HtcSMSErrorScreen;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0901aa

    new-instance v5, Lcom/htc/messaging/ui/HtcSMSErrorScreen$1;

    invoke-direct {v5, p0}, Lcom/htc/messaging/ui/HtcSMSErrorScreen$1;-><init>(Lcom/htc/messaging/ui/HtcSMSErrorScreen;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->smsErrorCauseDialog:Landroid/content/DialogInterface;

    .line 82
    .end local v0           #errorCodeArray:[I
    :cond_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 85
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 107
    const-string v0, "HtcSMSErrorScreen"

    const-string v1, "Closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 111
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 113
    return-void
.end method

.method public showErrorCauseDialg(II)V
    .locals 8
    .parameter "causeCode"
    .parameter "errorClass"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0901ac

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0901ad

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, message:Ljava/lang/String;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0901ab

    invoke-virtual {p0, v3}, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0200d1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09006c

    new-instance v4, Lcom/htc/messaging/ui/HtcSMSErrorScreen$4;

    invoke-direct {v4, p0}, Lcom/htc/messaging/ui/HtcSMSErrorScreen$4;-><init>(Lcom/htc/messaging/ui/HtcSMSErrorScreen;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 127
    .local v0, causeDialog:Landroid/content/DialogInterface;
    return-void
.end method
