.class Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10;
.super Landroid/content/BroadcastReceiver;
.source "OnlineResPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->doNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    .line 1108
    const-string v2, "com.htc.launcher.scene.ONLINE_SCENE_ID"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1109
    .local v0, guid:Ljava/lang/String;
    const-string v2, "com.htc.launcher.scene.EXTRA_SCENE_ID"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1113
    .local v1, installedSceneId:I
    if-ne v3, v1, :cond_1

    .line 1118
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;
    invoke-static {v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1200(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/olrespicker/UIHandler;

    move-result-object v2

    new-instance v3, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10$1;

    invoke-direct {v3, p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10$1;-><init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10;)V

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/olrespicker/UIHandler;->post(Ljava/lang/Runnable;)Z

    .line 1136
    :cond_0
    :goto_0
    return-void

    .line 1125
    :cond_1
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->sceneMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1600(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;
    invoke-static {v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$200(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1127
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;
    invoke-static {v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1200(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/olrespicker/UIHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;
    invoke-static {v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$200(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->indexOfGuid(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/olrespicker/UIHandler;->handleUpdateStatus(I)V

    goto :goto_0
.end method
