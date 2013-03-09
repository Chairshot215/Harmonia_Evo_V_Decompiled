.class Lcom/android/updater/ui/UpdaterSettings$6;
.super Ljava/lang/Object;
.source "UpdaterSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 162
    iput-object p1, p0, Lcom/android/updater/ui/UpdaterSettings$6;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings$6;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    #getter for: Lcom/android/updater/ui/UpdaterSettings;->mCancelCheckin:Z
    invoke-static {v0}, Lcom/android/updater/ui/UpdaterSettings;->access$600(Lcom/android/updater/ui/UpdaterSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings$6;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    #getter for: Lcom/android/updater/ui/UpdaterSettings;->mCheckUpdateThread:Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;
    invoke-static {v0}, Lcom/android/updater/ui/UpdaterSettings;->access$700(Lcom/android/updater/ui/UpdaterSettings;)Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings$6;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    #getter for: Lcom/android/updater/ui/UpdaterSettings;->mCheckUpdateThread:Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;
    invoke-static {v0}, Lcom/android/updater/ui/UpdaterSettings;->access$700(Lcom/android/updater/ui/UpdaterSettings;)Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->stopCheck()V

    .line 168
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings$6;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/updater/ui/UpdaterSettings;->mCheckUpdateThread:Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;
    invoke-static {v0, v1}, Lcom/android/updater/ui/UpdaterSettings;->access$702(Lcom/android/updater/ui/UpdaterSettings;Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;)Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;

    .line 170
    :cond_0
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->cancelCheckin()V

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings$6;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/updater/ui/UpdaterSettings;->removeDialog(I)V

    .line 175
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings$6;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    const/4 v1, 0x1

    #setter for: Lcom/android/updater/ui/UpdaterSettings;->mCancelCheckin:Z
    invoke-static {v0, v1}, Lcom/android/updater/ui/UpdaterSettings;->access$602(Lcom/android/updater/ui/UpdaterSettings;Z)Z

    goto :goto_0
.end method
