.class public Lcom/android/browser/NetworkStateHandler;
.super Ljava/lang/Object;
.source "NetworkStateHandler.java"


# instance fields
.field mActivity:Landroid/app/Activity;

.field mController:Lcom/android/browser/Controller;

.field private mIsNetworkUp:Z

.field private mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field private mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/Controller;)V
    .locals 4
    .parameter "activity"
    .parameter "controller"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/browser/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Lcom/android/browser/NetworkStateHandler;->mController:Lcom/android/browser/Controller;

    .line 45
    iget-object v2, p0, Lcom/android/browser/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 47
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 48
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/browser/NetworkStateHandler;->mIsNetworkUp:Z

    .line 55
    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/browser/NetworkStateHandler;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 56
    iget-object v2, p0, Lcom/android/browser/NetworkStateHandler;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    new-instance v2, Lcom/android/browser/NetworkStateHandler$1;

    invoke-direct {v2, p0}, Lcom/android/browser/NetworkStateHandler$1;-><init>(Lcom/android/browser/NetworkStateHandler;)V

    iput-object v2, p0, Lcom/android/browser/NetworkStateHandler;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/NetworkStateHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/browser/NetworkStateHandler;->sendNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 112
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method isNetworkUp()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/browser/NetworkStateHandler;->mIsNetworkUp:Z

    return v0
.end method

.method onNetworkToggle(Z)V
    .locals 2
    .parameter "up"

    .prologue
    .line 96
    iget-boolean v1, p0, Lcom/android/browser/NetworkStateHandler;->mIsNetworkUp:Z

    if-ne p1, v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iput-boolean p1, p0, Lcom/android/browser/NetworkStateHandler;->mIsNetworkUp:Z

    .line 100
    iget-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 101
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    goto :goto_0
.end method

.method onPause()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/browser/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    return-void
.end method

.method onResume()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/browser/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/browser/NetworkStateHandler;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    return-void
.end method
