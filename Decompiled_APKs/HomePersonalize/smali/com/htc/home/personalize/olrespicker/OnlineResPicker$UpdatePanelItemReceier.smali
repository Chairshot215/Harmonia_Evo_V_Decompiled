.class Lcom/htc/home/personalize/olrespicker/OnlineResPicker$UpdatePanelItemReceier;
.super Landroid/content/BroadcastReceiver;
.source "OnlineResPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/olrespicker/OnlineResPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdatePanelItemReceier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1437
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$UpdatePanelItemReceier;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;Lcom/htc/home/personalize/olrespicker/OnlineResPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1437
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$UpdatePanelItemReceier;-><init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    .line 1441
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$500()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UpdatePanelItemReceier"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1443
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.htc.home.personalize.action.UPDATE_PANELITEM"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1444
    const-string v5, "extra_update_guid"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1445
    .local v4, strGuid:Ljava/lang/String;
    const-string v5, "extra_update_result"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1446
    .local v3, result:I
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$UpdatePanelItemReceier;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;
    invoke-static {v5}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$200(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1447
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$UpdatePanelItemReceier;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;
    invoke-static {v5}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$200(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->indexOfGuid(Ljava/lang/String;)I

    move-result v1

    .line 1448
    .local v1, pos:I
    if-eq v1, v7, :cond_0

    .line 1449
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$UpdatePanelItemReceier;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;
    invoke-static {v5}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$200(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->get(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v2

    .line 1450
    .local v2, res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    if-nez v2, :cond_1

    .line 1461
    .end local v1           #pos:I
    .end local v2           #res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    .end local v3           #result:I
    .end local v4           #strGuid:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1454
    .restart local v1       #pos:I
    .restart local v2       #res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    .restart local v3       #result:I
    .restart local v4       #strGuid:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->setPrepareDownload(Z)V

    .line 1455
    if-eqz v3, :cond_0

    .line 1456
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$UpdatePanelItemReceier;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #calls: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->notifyStatusChange(I)V
    invoke-static {v5, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$2000(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;I)V

    goto :goto_0
.end method
