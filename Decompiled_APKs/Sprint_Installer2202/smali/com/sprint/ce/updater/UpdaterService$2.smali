.class Lcom/sprint/ce/updater/UpdaterService$2;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "UpdaterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/ce/updater/UpdaterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/ce/updater/UpdaterService;


# direct methods
.method constructor <init>(Lcom/sprint/ce/updater/UpdaterService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterService$2;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    .line 548
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 551
    packed-switch p2, :pswitch_data_0

    .line 556
    const-string v0, "SprintUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Package install FAILED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :goto_0
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterService$2;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #calls: Lcom/sprint/ce/updater/UpdaterService;->removeUpdatePackage(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/sprint/ce/updater/UpdaterService;->access$1(Lcom/sprint/ce/updater/UpdaterService;Ljava/lang/String;)V

    .line 561
    return-void

    .line 553
    :pswitch_0
    const-string v0, "SprintUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Package installed OK: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 551
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
