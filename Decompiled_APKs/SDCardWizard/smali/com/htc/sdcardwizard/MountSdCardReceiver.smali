.class public Lcom/htc/sdcardwizard/MountSdCardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MountSdCardReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdcardwizard/MountSdCardReceiver$OnUnmountListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/htc/sdcardwizard/MountSdCardReceiver$OnUnmountListener;

.field private owner:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sdcardwizard/MountSdCardReceiver$OnUnmountListener;)V
    .locals 0
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/htc/sdcardwizard/MountSdCardReceiver;->owner:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lcom/htc/sdcardwizard/MountSdCardReceiver;->mListener:Lcom/htc/sdcardwizard/MountSdCardReceiver$OnUnmountListener;

    .line 17
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, action:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 23
    iget-object v1, p0, Lcom/htc/sdcardwizard/MountSdCardReceiver;->mListener:Lcom/htc/sdcardwizard/MountSdCardReceiver$OnUnmountListener;

    invoke-interface {v1, v0}, Lcom/htc/sdcardwizard/MountSdCardReceiver$OnUnmountListener;->onUnMount(Ljava/lang/String;)V

    .line 25
    :cond_0
    return-void

    .line 21
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerReceiver()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 29
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/htc/sdcardwizard/MountSdCardReceiver;->owner:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/sdcardwizard/MountSdCardReceiver;->owner:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 41
    return-void
.end method
