.class Lcom/sprint/ce/updater/UpdaterMain$9;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "UpdaterMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/ce/updater/UpdaterMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/ce/updater/UpdaterMain;


# direct methods
.method constructor <init>(Lcom/sprint/ce/updater/UpdaterMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$9;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    .line 1085
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$9;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->removeUpdatePackage(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/sprint/ce/updater/UpdaterMain;->access$2(Lcom/sprint/ce/updater/UpdaterMain;Ljava/lang/String;)V

    .line 1091
    packed-switch p2, :pswitch_data_0

    .line 1097
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$9;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    sget-object v1, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;->FAILED:Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->processEntryComplete(Lcom/sprint/ce/updater/UpdaterMain$InstallResult;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/sprint/ce/updater/UpdaterMain;->access$11(Lcom/sprint/ce/updater/UpdaterMain;Lcom/sprint/ce/updater/UpdaterMain$InstallResult;Ljava/lang/String;)V

    .line 1100
    :goto_0
    return-void

    .line 1093
    :pswitch_0
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$9;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    sget-object v1, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;->SUCCESS:Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->processEntryComplete(Lcom/sprint/ce/updater/UpdaterMain$InstallResult;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/sprint/ce/updater/UpdaterMain;->access$11(Lcom/sprint/ce/updater/UpdaterMain;Lcom/sprint/ce/updater/UpdaterMain$InstallResult;Ljava/lang/String;)V

    goto :goto_0

    .line 1091
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
