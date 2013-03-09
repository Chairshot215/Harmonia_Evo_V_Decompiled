.class public final Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver;
.super Lcom/android/settings/framework/receiver/HtcAbstractReceiver;
.source "HtcPackageUpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$OnPackageUpdateListener;,
        Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;
    }
.end annotation


# instance fields
.field private mOnPackageUpdateListener:Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$OnPackageUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/framework/receiver/HtcAbstractReceiver;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver;->mOnPackageUpdateListener:Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$OnPackageUpdateListener;

    if-nez v1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;-><init>(Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver;)V

    .line 71
    .local v0, params:Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;->action:Ljava/lang/String;

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;->uri:Landroid/net/Uri;

    .line 73
    iget-object v1, v0, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;->packageName:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver;->mOnPackageUpdateListener:Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$OnPackageUpdateListener;

    invoke-interface {v1, v0}, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$OnPackageUpdateListener;->onPackageUpdate(Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;)V

    goto :goto_0
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 57
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public setOnPackageUpdateListener(Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$OnPackageUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver;->mOnPackageUpdateListener:Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$OnPackageUpdateListener;

    .line 87
    return-void
.end method
