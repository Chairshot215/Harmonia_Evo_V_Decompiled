.class public Lcom/android/phone/CSCallForwardProgress;
.super Landroid/app/Activity;
.source "CSCallForwardProgress.java"


# static fields
.field public static final ACTION_CLOSE:Ljava/lang/String; = "close"

.field public static final ACTION_UPDATE:Ljava/lang/String; = "update"

.field private static final TAG:Ljava/lang/String;

.field private static final _DEBUG:Z


# instance fields
.field private mProgress:Lcom/htc/app/HtcProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/phone/CSCallForwardProgress;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CSCallForwardProgress;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private _onIntent(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 71
    if-nez p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 72
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "close"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/phone/CSCallForwardProgress;->mProgress:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/phone/CSCallForwardProgress;->mProgress:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CSCallForwardProgress;->mProgress:Lcom/htc/app/HtcProgressDialog;

    .line 141
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 142
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/phone/CSCallForwardProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CSCallForwardProgress;->_onIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/CSCallForwardProgress;->showDialog(I)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CSCallForwardProgress;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    .line 84
    const/4 v2, 0x0

    .line 86
    .local v2, number:Ljava/lang/String;
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 87
    .local v3, phoneService:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getCFUNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 91
    .end local v3           #phoneService:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 92
    :cond_0
    sget-object v4, Lcom/android/phone/CSCallForwardProgress;->TAG:Ljava/lang/String;

    const-string v5, "onCreateDialog() do not show dialog for this case"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/android/phone/CSCallForwardProgress;->finish()V

    .line 94
    const/4 v4, 0x0

    .line 125
    :goto_1
    return-object v4

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/android/phone/CSCallForwardProgress;->TAG:Ljava/lang/String;

    const-string v5, "onCreate() Get Call Forwarding Number Remote Exception"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CSCallForwardProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 99
    .local v1, message:Ljava/lang/CharSequence;
    new-instance v4, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v4, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/CSCallForwardProgress;->mProgress:Lcom/htc/app/HtcProgressDialog;

    .line 100
    iget-object v4, p0, Lcom/android/phone/CSCallForwardProgress;->mProgress:Lcom/htc/app/HtcProgressDialog;

    const v5, 0x7f0e00b3

    invoke-virtual {v4, v5}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 101
    iget-object v4, p0, Lcom/android/phone/CSCallForwardProgress;->mProgress:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v4, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v4, p0, Lcom/android/phone/CSCallForwardProgress;->mProgress:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v4, v6}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 103
    iget-object v4, p0, Lcom/android/phone/CSCallForwardProgress;->mProgress:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v4, v6}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 104
    iget-object v4, p0, Lcom/android/phone/CSCallForwardProgress;->mProgress:Lcom/htc/app/HtcProgressDialog;

    new-instance v5, Lcom/android/phone/CSCallForwardProgress$1;

    invoke-direct {v5, p0}, Lcom/android/phone/CSCallForwardProgress$1;-><init>(Lcom/android/phone/CSCallForwardProgress;)V

    invoke-virtual {v4, v5}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 111
    iget-object v4, p0, Lcom/android/phone/CSCallForwardProgress;->mProgress:Lcom/htc/app/HtcProgressDialog;

    new-instance v5, Lcom/android/phone/CSCallForwardProgress$2;

    invoke-direct {v5, p0}, Lcom/android/phone/CSCallForwardProgress$2;-><init>(Lcom/android/phone/CSCallForwardProgress;)V

    invoke-virtual {v4, v5}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 125
    iget-object v4, p0, Lcom/android/phone/CSCallForwardProgress;->mProgress:Lcom/htc/app/HtcProgressDialog;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CSCallForwardProgress;->mProgress:Lcom/htc/app/HtcProgressDialog;

    .line 134
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/phone/CSCallForwardProgress;->_onIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CSCallForwardProgress;->finish()V

    goto :goto_0
.end method
