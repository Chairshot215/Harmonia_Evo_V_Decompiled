.class Lcom/sprint/ce/updater/UpdaterMain$3;
.super Ljava/lang/Object;
.source "UpdaterMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$3;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 494
    sget-boolean v3, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SprintUpdater"

    const-string v4, "mOpenOnClick"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_0
    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterMain$3;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #setter for: Lcom/sprint/ce/updater/UpdaterMain;->mStop:Z
    invoke-static {v3, v5}, Lcom/sprint/ce/updater/UpdaterMain;->access$0(Lcom/sprint/ce/updater/UpdaterMain;Z)V

    .line 496
    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterMain$3;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-boolean v3, v3, Lcom/sprint/ce/updater/UpdaterMain;->mInteractiveUpdate:Z

    if-eqz v3, :cond_2

    .line 498
    :try_start_0
    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterMain$3;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    invoke-virtual {v3}, Lcom/sprint/ce/updater/UpdaterMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 499
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterMain$3;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v3, v3, Lcom/sprint/ce/updater/UpdaterMain;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 500
    .local v1, intent:Landroid/content/Intent;
    sget-boolean v3, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "SprintUpdater"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "open click: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_1
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 502
    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterMain$3;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    invoke-virtual {v3, v1}, Lcom/sprint/ce/updater/UpdaterMain;->startActivity(Landroid/content/Intent;)V

    .line 503
    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterMain$3;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const/4 v4, 0x1

    #setter for: Lcom/sprint/ce/updater/UpdaterMain;->mPostActionStarted:Z
    invoke-static {v3, v4}, Lcom/sprint/ce/updater/UpdaterMain;->access$4(Lcom/sprint/ce/updater/UpdaterMain;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterMain$3;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    invoke-virtual {v3}, Lcom/sprint/ce/updater/UpdaterMain;->finish()V

    .line 509
    return-void

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v3, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "SprintUpdater"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error opening installed package: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sprint/ce/updater/UpdaterMain$3;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v5, v5, Lcom/sprint/ce/updater/UpdaterMain;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
