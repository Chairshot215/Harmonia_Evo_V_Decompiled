.class public Lcom/htc/dlnamediaserver/MountChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MountChangeReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "aContext"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dlnamediaserver/MountChangeReceiver;->mContext:Landroid/content/Context;

    .line 36
    iput-object p1, p0, Lcom/htc/dlnamediaserver/MountChangeReceiver;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static RegisterMountChangeReceiver(Landroid/content/Context;)Landroid/content/BroadcastReceiver;
    .locals 3
    .parameter "aContext"

    .prologue
    .line 18
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 19
    .local v1, theFilter:Landroid/content/IntentFilter;
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/htc/dlnamediaserver/MountChangeReceiver;

    invoke-direct {v0, p0}, Lcom/htc/dlnamediaserver/MountChangeReceiver;-><init>(Landroid/content/Context;)V

    .line 21
    .local v0, theBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    return-object v0
.end method

.method public static UnregisterMountChangeReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0
    .parameter "aContext"
    .parameter "aBroadcastReceiver"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/dlnamediaserver/MountChangeReceiver;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/htc/dlnamediaserver/Settings;

    invoke-virtual {v0}, Lcom/htc/dlnamediaserver/Settings;->Update()V

    .line 46
    iget-object v0, p0, Lcom/htc/dlnamediaserver/MountChangeReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/dlnamediaserver/MountChangeReceiver;->mContext:Landroid/content/Context;

    const v2, 0x7f050019

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 47
    return-void
.end method
