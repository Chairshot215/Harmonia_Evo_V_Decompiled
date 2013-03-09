.class public abstract Lcom/googlecode/eyesfree/utils/BasePackageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "BasePackageMonitor.java"


# instance fields
.field private final mPackageFilter:Landroid/content/IntentFilter;

.field private mRegisteredContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/googlecode/eyesfree/utils/BasePackageMonitor;->mPackageFilter:Landroid/content/IntentFilter;

    .line 48
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/BasePackageMonitor;->mPackageFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/BasePackageMonitor;->mPackageFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/BasePackageMonitor;->mPackageFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/BasePackageMonitor;->mPackageFilter:Landroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private static getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 100
    .local v0, uri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 104
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected abstract onPackageAdded(Ljava/lang/String;)V
.end method

.method protected abstract onPackageChanged(Ljava/lang/String;)V
.end method

.method protected abstract onPackageRemoved(Ljava/lang/String;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 82
    invoke-static {p2}, Lcom/googlecode/eyesfree/utils/BasePackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {p0, v1}, Lcom/googlecode/eyesfree/utils/BasePackageMonitor;->onPackageAdded(Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    invoke-virtual {p0, v1}, Lcom/googlecode/eyesfree/utils/BasePackageMonitor;->onPackageRemoved(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_2
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {p0, v1}, Lcom/googlecode/eyesfree/utils/BasePackageMonitor;->onPackageChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/BasePackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/googlecode/eyesfree/utils/BasePackageMonitor;->mRegisteredContext:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/BasePackageMonitor;->mPackageFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/BasePackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/BasePackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/eyesfree/utils/BasePackageMonitor;->mRegisteredContext:Landroid/content/Context;

    .line 78
    return-void
.end method
