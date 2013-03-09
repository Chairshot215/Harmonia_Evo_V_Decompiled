.class Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;
.super Ljava/lang/Thread;
.source "SkinCustomizeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomizeThread"
.end annotation


# instance fields
.field mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;


# direct methods
.method public constructor <init>(Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "intent"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;->this$0:Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;->mIntent:Landroid/content/Intent;

    .line 61
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 65
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;->this$0:Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;

    iget-object v5, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;->this$0:Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;

    #getter for: Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->access$100(Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move-result-object v5

    #setter for: Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;
    invoke-static {v4, v5}, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->access$002(Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    .line 67
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;->this$0:Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;

    #getter for: Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->access$100(Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/skin/HtcSkinUtil;->getUserInstallSkinPackageName(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 68
    .local v1, DownloadedSkinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, DeletedSkinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 73
    .local v2, SkinPackageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;->this$0:Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;

    #getter for: Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->access$100(Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/htc/util/skin/HtcSkinUtil;->checkSkinVersionCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;->this$0:Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;

    iget-object v5, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;->this$0:Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;

    new-instance v6, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$SkinUninstallObserver;

    iget-object v7, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;->this$0:Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;

    new-instance v8, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread$1;

    invoke-direct {v8, p0}, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread$1;-><init>(Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;)V

    invoke-direct {v6, v7, v2, v8}, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$SkinUninstallObserver;-><init>(Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;Ljava/lang/String;Lcom/htc/home/personalize/widget/SkinPickerAdapter$ApplySkinListener;)V

    #calls: Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->uninstallApk(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;)V
    invoke-static {v4, v5, v2, v6}, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->access$200(Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;)V

    .line 87
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    .end local v2           #SkinPackageName:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;->this$0:Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;

    #getter for: Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;
    invoke-static {v4}, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->access$000(Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->UpdateSkinDatabaseByFOTA(Ljava/util/ArrayList;)V

    .line 93
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;->mIntent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    .line 95
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;->this$0:Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;

    iget-object v5, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->stopService(Landroid/content/Intent;)Z

    .line 96
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;->mIntent:Landroid/content/Intent;

    .line 98
    :cond_2
    return-void
.end method
