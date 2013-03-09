.class Lcom/htc/home/personalize/onlineresource/OnlineResourceList$1;
.super Landroid/content/BroadcastReceiver;
.source "OnlineResourceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/onlineresource/OnlineResourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/onlineresource/OnlineResourceList;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList$1;->this$0:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v7, 0x0

    .line 41
    const-string v8, "TYPE"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 42
    .local v6, type:I
    iget-object v8, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList$1;->this$0:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    #getter for: Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->type:I
    invoke-static {v8}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->access$000(Lcom/htc/home/personalize/onlineresource/OnlineResourceList;)I

    move-result v8

    if-eq v6, v8, :cond_1

    .line 78
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 46
    :cond_1
    const-string v8, "ACTION"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 47
    .local v0, action:I
    const-string v8, "RESULT"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 49
    .local v4, result:I
    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 58
    :pswitch_2
    const-string v8, "GUID"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, guid:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList$1;->this$0:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v8, v1}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v3

    .line 60
    .local v3, res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    const-string v8, "OLD_STATUS"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, sOldStatus:Ljava/lang/String;
    if-nez v5, :cond_3

    move-object v2, v7

    .line 63
    .local v2, oldStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :goto_1
    if-ne v10, v0, :cond_2

    .line 64
    invoke-static {}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receiver.onReceive: action=UNKNOWN type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " result="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " guid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " oldStatus="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v3, :cond_4

    :goto_2
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_2
    if-eqz v3, :cond_0

    .line 70
    iget-object v7, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList$1;->this$0:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v7, v3, v2, v0, v4}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->fireDataChanged(Lcom/htc/home/personalize/onlineresource/OnlineResource;Lcom/htc/home/personalize/abstractresource/Resource$Const;II)V

    goto :goto_0

    .line 61
    .end local v2           #oldStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :cond_3
    invoke-static {v5}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->valueOf(Ljava/lang/String;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v2

    goto :goto_1

    .line 64
    .restart local v2       #oldStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :cond_4
    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v7

    goto :goto_2

    .line 75
    .end local v1           #guid:Ljava/lang/String;
    .end local v2           #oldStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    .end local v3           #res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    .end local v5           #sOldStatus:Ljava/lang/String;
    :pswitch_3
    iget-object v8, p0, Lcom/htc/home/personalize/onlineresource/OnlineResourceList$1;->this$0:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v8, v7, v7, v0, v4}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->fireDataChanged(Lcom/htc/home/personalize/onlineresource/OnlineResource;Lcom/htc/home/personalize/abstractresource/Resource$Const;II)V

    goto/16 :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
