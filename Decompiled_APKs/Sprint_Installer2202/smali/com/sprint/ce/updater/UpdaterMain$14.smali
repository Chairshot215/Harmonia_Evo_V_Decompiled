.class Lcom/sprint/ce/updater/UpdaterMain$14;
.super Ljava/lang/Thread;
.source "UpdaterMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/ce/updater/UpdaterMain;->performUpdateCheck(Lcom/sprint/ce/updater/Response;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/ce/updater/UpdaterMain;

.field private final synthetic val$callback:Ljava/lang/Runnable;

.field private final synthetic val$r:Lcom/sprint/ce/updater/Response;


# direct methods
.method constructor <init>(Lcom/sprint/ce/updater/UpdaterMain;Lcom/sprint/ce/updater/Response;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iput-object p2, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->val$r:Lcom/sprint/ce/updater/Response;

    iput-object p3, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->val$callback:Ljava/lang/Runnable;

    .line 745
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sprint/ce/updater/UpdaterMain$14;)Lcom/sprint/ce/updater/UpdaterMain;
    .locals 1
    .parameter

    .prologue
    .line 745
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 748
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->val$r:Lcom/sprint/ce/updater/Response;

    .line 750
    .local v0, response:Lcom/sprint/ce/updater/Response;
    const/4 v7, 0x1

    .line 751
    .local v7, gotSession:Z
    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-boolean v1, v1, Lcom/sprint/ce/updater/UpdaterMain;->mAltUseSlot0:Z

    if-eqz v1, :cond_0

    .line 752
    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    invoke-static {v1}, Lcom/sprint/ce/updater/DownloadUtil;->requestDataSession(Landroid/content/Context;)Z

    move-result v7

    .line 754
    :cond_0
    if-eqz v7, :cond_1

    if-nez v0, :cond_1

    .line 755
    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v2, v2, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-boolean v3, v3, Lcom/sprint/ce/updater/UpdaterMain;->mAltUseSlot0:Z

    invoke-static {v1, v2, v3}, Lcom/sprint/ce/updater/DownloadUtil;->checkForUpdate(Landroid/content/Context;Ljava/lang/String;Z)Lcom/sprint/ce/updater/Response;

    move-result-object v0

    .line 757
    :cond_1
    if-eqz v7, :cond_4

    if-nez v0, :cond_4

    .line 760
    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iput-boolean v10, v1, Lcom/sprint/ce/updater/UpdaterMain;->mSuccess:Z

    .line 804
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->val$callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 805
    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sprint/ce/updater/UpdaterMain;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 807
    :cond_3
    return-void

    .line 761
    :cond_4
    if-eqz v7, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/sprint/ce/updater/Response;->getError()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_9

    .line 763
    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-boolean v1, v1, Lcom/sprint/ce/updater/UpdaterMain;->mBrowserJSON:Z

    if-eqz v1, :cond_6

    .line 764
    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v2, v2, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v3, v3, Lcom/sprint/ce/updater/UpdaterMain;->mTrustedHosts:Lcom/sprint/ce/updater/TrustedHosts;

    iget-object v4, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v4, v4, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-boolean v5, v5, Lcom/sprint/ce/updater/UpdaterMain;->mAllowOverride:Z

    invoke-virtual/range {v0 .. v5}, Lcom/sprint/ce/updater/Response;->getEligibleEntries(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/ce/updater/TrustedHosts;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v8

    .line 768
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/ce/updater/Entry;>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 769
    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #setter for: Lcom/sprint/ce/updater/UpdaterMain;->mEntries:Ljava/util/List;
    invoke-static {v1, v8}, Lcom/sprint/ce/updater/UpdaterMain;->access$14(Lcom/sprint/ce/updater/UpdaterMain;Ljava/util/List;)V

    .line 771
    const-string v1, "SprintUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updates available: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 781
    :goto_3
    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iput-boolean v10, v1, Lcom/sprint/ce/updater/UpdaterMain;->mSuccess:Z

    goto :goto_0

    .line 766
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/ce/updater/Entry;>;"
    :cond_6
    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v2, v2, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-boolean v3, v3, Lcom/sprint/ce/updater/UpdaterMain;->mAllowOverride:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/sprint/ce/updater/Response;->getEligibleEntries(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v8

    .restart local v8       #list:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/ce/updater/Entry;>;"
    goto :goto_1

    .line 772
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sprint/ce/updater/Entry;

    .line 773
    .local v6, e:Lcom/sprint/ce/updater/Entry;
    sget-boolean v2, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "SprintUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "package="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 774
    const-string v4, ";versionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lcom/sprint/ce/updater/Entry;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 775
    const-string v4, ";versionCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Lcom/sprint/ce/updater/Entry;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 773
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 779
    .end local v6           #e:Lcom/sprint/ce/updater/Entry;
    :cond_8
    const-string v1, "SprintUpdater"

    const-string v2, "No updates available"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 784
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/ce/updater/Entry;>;"
    :cond_9
    const-string v9, "unable to connect"

    .line 785
    .local v9, message:Ljava/lang/String;
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/sprint/ce/updater/Response;->getError()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 786
    invoke-virtual {v0}, Lcom/sprint/ce/updater/Response;->getError()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    .line 788
    :cond_a
    const-string v1, "SprintUpdater"

    const-string v2, "update check faile."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    invoke-virtual {v1}, Lcom/sprint/ce/updater/UpdaterMain;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 790
    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$14;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    new-instance v2, Lcom/sprint/ce/updater/UpdaterMain$14$1;

    invoke-direct {v2, p0}, Lcom/sprint/ce/updater/UpdaterMain$14$1;-><init>(Lcom/sprint/ce/updater/UpdaterMain$14;)V

    invoke-virtual {v1, v2}, Lcom/sprint/ce/updater/UpdaterMain;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
