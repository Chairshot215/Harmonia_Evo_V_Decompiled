.class public Lcom/htc/android/psclient/ConnectToPCService;
.super Landroid/app/Service;
.source "ConnectToPCService.java"


# instance fields
.field private HDMIIntentfilter:Landroid/content/IntentFilter;

.field private final TAG:Ljava/lang/String;

.field private mHDMIReceiver:Lcom/htc/android/psclient/HDMIReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 10
    const-string v0, "ConnectToPCService"

    iput-object v0, p0, Lcom/htc/android/psclient/ConnectToPCService;->TAG:Ljava/lang/String;

    .line 12
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/android/psclient/ConnectToPCService;->HDMIIntentfilter:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 17
    const-string v0, "ConnectToPCService"

    const-string v1, "--onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, p0, Lcom/htc/android/psclient/ConnectToPCService;->mHDMIReceiver:Lcom/htc/android/psclient/HDMIReceiver;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/htc/android/psclient/HDMIReceiver;

    invoke-direct {v0}, Lcom/htc/android/psclient/HDMIReceiver;-><init>()V

    iput-object v0, p0, Lcom/htc/android/psclient/ConnectToPCService;->mHDMIReceiver:Lcom/htc/android/psclient/HDMIReceiver;

    .line 21
    const-string v0, "ConnectToPCService"

    const-string v1, "--new HDMIReceiver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/htc/android/psclient/ConnectToPCService;->HDMIIntentfilter:Landroid/content/IntentFilter;

    const-string v1, "HDMI_CABLE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/htc/android/psclient/ConnectToPCService;->HDMIIntentfilter:Landroid/content/IntentFilter;

    const-string v1, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/htc/android/psclient/ConnectToPCService;->mHDMIReceiver:Lcom/htc/android/psclient/HDMIReceiver;

    iget-object v1, p0, Lcom/htc/android/psclient/ConnectToPCService;->HDMIIntentfilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/psclient/ConnectToPCService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    const-string v0, "ConnectToPCService"

    const-string v1, "--register HDMIReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 35
    const-string v0, "ConnectToPCService"

    const-string v1, "--onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/htc/android/psclient/ConnectToPCService;->mHDMIReceiver:Lcom/htc/android/psclient/HDMIReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/psclient/ConnectToPCService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 37
    return-void
.end method
