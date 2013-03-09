.class Lcom/htc/home/personalize/catechooser/CategoryChooser$DBReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CategoryChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/catechooser/CategoryChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/catechooser/CategoryChooser;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser$DBReceiver;->this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/catechooser/CategoryChooser;Lcom/htc/home/personalize/catechooser/CategoryChooser$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/catechooser/CategoryChooser$DBReceiver;-><init>(Lcom/htc/home/personalize/catechooser/CategoryChooser;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    .line 311
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.home.personalize.storedatamanager.ACTION_GETSUBCATEGORYLIST_RESPONSE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    const-string v3, "result_code"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 313
    .local v1, result:I
    const-string v3, "storedata_type"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 315
    .local v2, resultType:I
    iget-object v3, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser$DBReceiver;->this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;

    #getter for: Lcom/htc/home/personalize/catechooser/CategoryChooser;->type:I
    invoke-static {v3}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->access$300(Lcom/htc/home/personalize/catechooser/CategoryChooser;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 317
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    iget-object v3, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser$DBReceiver;->this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;

    const/4 v4, 0x0

    #setter for: Lcom/htc/home/personalize/catechooser/CategoryChooser;->dbReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3, v4}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->access$502(Lcom/htc/home/personalize/catechooser/CategoryChooser;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 323
    iget-object v3, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser$DBReceiver;->this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;

    #getter for: Lcom/htc/home/personalize/catechooser/CategoryChooser;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;
    invoke-static {v3}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->access$600(Lcom/htc/home/personalize/catechooser/CategoryChooser;)Lcom/htc/home/personalize/olrespicker/UIHandler;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/olrespicker/UIHandler;->sendEmptyMessage(I)Z

    .line 324
    iget-object v3, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser$DBReceiver;->this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;

    invoke-virtual {v3}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    invoke-static {}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dbReceiver: get Wota response while finishing"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .end local v1           #result:I
    .end local v2           #resultType:I
    :cond_0
    :goto_1
    return-void

    .line 318
    .restart local v1       #result:I
    .restart local v2       #resultType:I
    :catch_0
    move-exception v0

    .line 319
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dbReceiver: unregisterReceiver this="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 330
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-object v3, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser$DBReceiver;->this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;

    invoke-virtual {v3}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->reloadList()V

    goto :goto_1
.end method
