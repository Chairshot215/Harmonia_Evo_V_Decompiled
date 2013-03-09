.class Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnlineResPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/olrespicker/OnlineResPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;Lcom/htc/home/personalize/olrespicker/OnlineResPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1402
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;-><init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    .line 1405
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    const-string v2, "com.htc.home.personalize.storedatamanager.ACTION_GETITEMLIST_RESPONSE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1408
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    const-string v3, "result_code"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->miDBResult:I
    invoke-static {v2, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1702(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;I)I

    .line 1409
    const-string v2, "storedata_type"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1411
    .local v1, resultType:I
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I
    invoke-static {v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1800(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1413
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    :goto_0
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    const/4 v3, 0x0

    #setter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dbReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;
    invoke-static {v2, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1902(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;)Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;

    .line 1418
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBReceiver.onReceive: dbReceiver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dbReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;
    invoke-static {v4}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1900(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/home/personalize/abstractresource/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;
    invoke-static {v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1200(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/olrespicker/UIHandler;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/olrespicker/UIHandler;->sendEmptyMessage(I)Z

    .line 1421
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    invoke-virtual {v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;
    invoke-static {v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$200(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1422
    :cond_0
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DBReceiver.onReceive: get server response while finishing"

    invoke-static {v2, v3}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    .end local v1           #resultType:I
    :cond_1
    :goto_1
    return-void

    .line 1414
    .restart local v1       #resultType:I
    :catch_0
    move-exception v0

    .line 1415
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DBReceiver.onReceive: unregister receiver"

    invoke-static {v2, v3, v0}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1427
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    invoke-virtual {v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->reloadList()V

    goto :goto_1
.end method
