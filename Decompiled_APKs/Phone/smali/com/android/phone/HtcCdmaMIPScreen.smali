.class public Lcom/android/phone/HtcCdmaMIPScreen;
.super Landroid/app/Activity;
.source "HtcCdmaMIPScreen.java"


# static fields
.field private static final DBG:Z = false

.field private static final DIALOG_HOTSPOT_ERROR:I = 0x2

.field private static final DIALOG_MIP_ERROR:I = 0x1

.field private static final EVENT_SHOW_DIALOG:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaMIPScreen"


# instance fields
.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mFinalMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mMipErrorId:I

.field private mMipErrorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mMipErrorId:I

    .line 42
    iput-object v1, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mMipErrorMsg:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mFinalMessage:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 146
    new-instance v0, Lcom/android/phone/HtcCdmaMIPScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcCdmaMIPScreen$3;-><init>(Lcom/android/phone/HtcCdmaMIPScreen;)V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HtcCdmaMIPScreen;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCdmaMIPScreen;->updateDialog(Landroid/content/Intent;)V

    return-void
.end method

.method private updateDialog(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 80
    const-string v1, "MIP_ERROR_ID"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mMipErrorId:I

    .line 81
    iget v1, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mMipErrorId:I

    const/16 v2, 0x43

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mMipErrorId:I

    const/16 v2, 0x44

    if-ne v1, v2, :cond_2

    .line 83
    :cond_0
    const-string v1, "ril.cdma.profile"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, profileType:Ljava/lang/String;
    const-string v1, "HtcCdmaMIPScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profileType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    invoke-virtual {p0, v6}, Lcom/android/phone/HtcCdmaMIPScreen;->removeDialog(I)V

    .line 88
    invoke-virtual {p0, v4}, Lcom/android/phone/HtcCdmaMIPScreen;->removeDialog(I)V

    .line 89
    invoke-virtual {p0, v4}, Lcom/android/phone/HtcCdmaMIPScreen;->showDialog(I)V

    .line 106
    .end local v0           #profileType:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    const-string v1, "MIP_ERROR_MSG"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mMipErrorMsg:Ljava/lang/String;

    .line 95
    iget v1, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mMipErrorId:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mMipErrorMsg:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e0117

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mMipErrorId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/HtcCdmaMIPScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mMipErrorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mFinalMessage:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v1, :cond_3

    .line 98
    invoke-virtual {p0, v6}, Lcom/android/phone/HtcCdmaMIPScreen;->removeDialog(I)V

    .line 99
    invoke-virtual {p0, v6}, Lcom/android/phone/HtcCdmaMIPScreen;->showDialog(I)V

    goto :goto_0

    .line 101
    :cond_3
    iget-object v1, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mFinalMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaMIPScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 51
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone.HtcCdmaMIPScreen.hotspot"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {p0, v4}, Lcom/android/phone/HtcCdmaMIPScreen;->removeDialog(I)V

    .line 54
    invoke-virtual {p0, v3}, Lcom/android/phone/HtcCdmaMIPScreen;->removeDialog(I)V

    .line 55
    invoke-virtual {p0, v3}, Lcom/android/phone/HtcCdmaMIPScreen;->showDialog(I)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaMIPScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 60
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const v1, 0x1080027

    .line 116
    packed-switch p1, :pswitch_data_0

    .line 143
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 118
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0115

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mFinalMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0116

    new-instance v2, Lcom/android/phone/HtcCdmaMIPScreen$1;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcCdmaMIPScreen$1;-><init>(Lcom/android/phone/HtcCdmaMIPScreen;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 128
    iget-object v0, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 131
    :pswitch_1
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0087

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0088

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0140

    new-instance v2, Lcom/android/phone/HtcCdmaMIPScreen$2;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcCdmaMIPScreen$2;-><init>(Lcom/android/phone/HtcCdmaMIPScreen;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 141
    iget-object v0, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 112
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 66
    const-string v1, "com.android.phone.HtcCdmaMIPScreen.hotspot"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0, v2}, Lcom/android/phone/HtcCdmaMIPScreen;->removeDialog(I)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/android/phone/HtcCdmaMIPScreen;->removeDialog(I)V

    .line 70
    invoke-virtual {p0, v3}, Lcom/android/phone/HtcCdmaMIPScreen;->showDialog(I)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 75
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/HtcCdmaMIPScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
