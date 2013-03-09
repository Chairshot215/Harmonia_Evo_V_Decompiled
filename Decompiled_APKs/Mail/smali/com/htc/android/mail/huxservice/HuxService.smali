.class public Lcom/htc/android/mail/huxservice/HuxService;
.super Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
.source "HuxService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;
    }
.end annotation


# static fields
.field private static final endPointUpdateInterval:I = 0x18


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mRestoreAccountOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;-><init>()V

    .line 23
    const-string v0, "HuxService"

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxService;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/huxservice/HuxService;->mRestoreAccountOnly:Z

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/huxservice/HuxService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/htc/android/mail/huxservice/HuxService;->mRestoreAccountOnly:Z

    return v0
.end method


# virtual methods
.method public getPinThroughMobileNetwork(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 200
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 201
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 203
    .local v1, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    new-instance v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "GET/snc/user/authTwo/verifyDevice"

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 211
    :goto_0
    return-void

    .line 206
    :cond_0
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "HuxService"

    const-string v3, "No Mobile Network: Skil getPin"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_1
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/huxservice/HuxService;->removeDialog(I)V

    .line 208
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 193
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/htc/android/mail/huxservice/HuxService;->setResult(ILandroid/content/Intent;)V

    .line 195
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxService;->finish()V

    .line 196
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 30
    invoke-super {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HuxService"

    const-string v2, "onCreate>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    invoke-virtual {p0, v6}, Lcom/htc/android/mail/huxservice/HuxService;->requestWindowFeature(I)Z

    .line 34
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p0}, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;-><init>(Lcom/htc/android/mail/huxservice/HuxService;Landroid/content/Context;Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mRequestHandler:Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;

    .line 35
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mRequestHandler:Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    .line 37
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxService;->showDialog(I)V

    .line 38
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxService;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIntent:Landroid/content/Intent;

    .line 39
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIntent:Landroid/content/Intent;

    const-string v2, "CallingActivity"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    .line 40
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIntent:Landroid/content/Intent;

    const-string v2, "isRestoreAccountOnly"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/mail/huxservice/HuxService;->mRestoreAccountOnly:Z

    .line 43
    iget-boolean v1, p0, Lcom/htc/android/mail/huxservice/HuxService;->mRestoreAccountOnly:Z

    if-nez v1, :cond_4

    .line 44
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "HuxService"

    const-string v2, "Calling from ProviderListScreen"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_1
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxAccountUI;

    invoke-direct {v1, p0, v5}, Lcom/htc/android/mail/huxservice/HuxAccountUI;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;I)V

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    .line 50
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/Account;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 51
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "HuxService"

    const-string v2, "hux token exists"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_3
    iget-boolean v1, p0, Lcom/htc/android/mail/huxservice/HuxService;->mRestoreAccountOnly:Z

    if-eqz v1, :cond_5

    .line 54
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxService;->finish()V

    .line 82
    :goto_1
    return-void

    .line 47
    :cond_4
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "HuxService"

    const-string v2, "Calling from OOBE"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/android/mail/Account;->getVerifyDeviceInfoUpdateTime(Landroid/content/Context;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    .line 61
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetMasterEndpointTask;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetMasterEndpointTask;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetMasterEndpointTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 64
    :cond_6
    new-instance v1, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mVerifyDeviceInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/android/mail/ProviderListScreen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "CallingActivity"

    iget v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    const-string v1, "verifyDeviceInfo"

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mVerifyDeviceInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    const-string v1, "huxAuthReady"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxService;->startActivity(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxService;->finish()V

    goto :goto_1

    .line 75
    .end local v0           #intent:Landroid/content/Intent;
    :cond_7
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_8

    const-string v1, "HuxService"

    const-string v2, "hux token not exists"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_8
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/Account;->getPIN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    .line 77
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxService;->getPinThroughMobileNetwork(Landroid/content/Context;)V

    goto :goto_1

    .line 79
    :cond_9
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 93
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxService"

    const-string v1, "onPrepareDialog()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 100
    .end local p2
    :goto_0
    return-void

    .restart local p2
    :pswitch_0
    move-object v0, p2

    .line 96
    check-cast v0, Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f0b0340

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 97
    check-cast p2, Lcom/htc/app/HtcProgressDialog;

    .end local p2
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 86
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxService"

    const-string v1, "onResume> "

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    invoke-super {p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->onResume()V

    .line 88
    return-void
.end method
