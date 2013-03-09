.class Lcom/android/updater/ui/UpdaterSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "UpdaterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ui/UpdaterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ui/UpdaterSettings;


# direct methods
.method constructor <init>(Lcom/android/updater/ui/UpdaterSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/updater/ui/UpdaterSettings$1;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterSettings$1;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    const/4 v2, 0x0

    #setter for: Lcom/android/updater/ui/UpdaterSettings;->isNeedToShowProgressActivity:Z
    invoke-static {v1, v2}, Lcom/android/updater/ui/UpdaterSettings;->access$002(Lcom/android/updater/ui/UpdaterSettings;Z)Z

    .line 92
    new-instance v0, Lcom/android/updater/ui/UpdaterSettings$UpdaterFinishThread;

    iget-object v1, p0, Lcom/android/updater/ui/UpdaterSettings$1;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/updater/ui/UpdaterSettings$UpdaterFinishThread;-><init>(Lcom/android/updater/ui/UpdaterSettings;Lcom/android/updater/ui/UpdaterSettings$1;)V

    .line 93
    .local v0, updaterFinishThread:Lcom/android/updater/ui/UpdaterSettings$UpdaterFinishThread;
    invoke-virtual {v0}, Lcom/android/updater/ui/UpdaterSettings$UpdaterFinishThread;->start()V

    .line 94
    return-void
.end method
