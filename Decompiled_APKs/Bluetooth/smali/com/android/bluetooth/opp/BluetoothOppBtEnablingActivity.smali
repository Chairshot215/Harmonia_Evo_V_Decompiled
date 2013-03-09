.class public Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;
.super Landroid/app/Activity;
.source "BluetoothOppBtEnablingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field private static final BT_ENABLING_TIMEOUT:I = 0x0

.field private static final BT_ENABLING_TIMEOUT_VALUE:I = 0x4e20

.field private static final D:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothOppEnablingActivity"

.field private static final V:Z


# instance fields
.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mRegistered:Z

.field private final mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mRegistered:Z

    .line 112
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->cancelSendingProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->dismissProgressDialog()V

    return-void
.end method

.method private cancelSendingProgress()V
    .locals 2

    .prologue
    .line 146
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v0

    .line 147
    .local v0, mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;
    iget-boolean v1, v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    if-eqz v1, :cond_0

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->finish()V

    .line 151
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 167
    :cond_0
    return-void
.end method

.method private showProgressDialog()V
    .locals 4

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v1, :cond_0

    .line 155
    const v1, 0x7f040039

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, displayStr:Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 157
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1, p0}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 160
    .end local v0           #displayStr:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 78
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->finish()V

    .line 91
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mRegistered:Z

    .line 87
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->showProgressDialog()V

    .line 89
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 106
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->dismissProgressDialog()V

    .line 107
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    :cond_0
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 95
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->cancelSendingProgress()V

    .line 100
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
