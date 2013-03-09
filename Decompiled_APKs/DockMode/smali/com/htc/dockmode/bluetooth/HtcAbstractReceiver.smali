.class public abstract Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;
.super Ljava/lang/Object;
.source "HtcAbstractReceiver.java"


# instance fields
.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver$1;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver$1;-><init>(Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;)V

    iput-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;->mRegistered:Z

    .line 25
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 35
    iput-object p1, p0, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;->mContext:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;->setIntentFilter(Landroid/content/IntentFilter;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected abstract onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;->mRegistered:Z

    .line 60
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected abstract setIntentFilter(Landroid/content/IntentFilter;)V
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;->mRegistered:Z

    .line 75
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
