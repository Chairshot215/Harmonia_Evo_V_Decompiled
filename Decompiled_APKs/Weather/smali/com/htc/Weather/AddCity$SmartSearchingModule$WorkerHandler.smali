.class Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;
.super Landroid/os/Handler;
.source "AddCity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/AddCity$SmartSearchingModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/Weather/AddCity$SmartSearchingModule;


# direct methods
.method public constructor <init>(Lcom/htc/Weather/AddCity$SmartSearchingModule;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 739
    iput-object p1, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;->this$1:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    .line 740
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 741
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x1

    .line 745
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 746
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 827
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 749
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    .line 751
    .local v3, map:Ljava/util/HashMap;
    const-string v4, "level"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 752
    .local v2, mLevel:Ljava/lang/Integer;
    const-string v4, "pattern"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_5

    const-string v1, ""

    .line 759
    .local v1, keyMapIndex:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;->this$1:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    iget-object v4, v4, Lcom/htc/Weather/AddCity$SmartSearchingModule;->this$0:Lcom/htc/Weather/AddCity;

    invoke-virtual {v4}, Lcom/htc/Weather/AddCity;->getKeyMappingIndex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 761
    iget-object v4, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;->this$1:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    iget-object v4, v4, Lcom/htc/Weather/AddCity$SmartSearchingModule;->this$0:Lcom/htc/Weather/AddCity;

    iget v4, v4, Lcom/htc/Weather/AddCity;->mPendingSearch:I

    if-lez v4, :cond_1

    .line 762
    iget-object v4, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;->this$1:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    iget-object v4, v4, Lcom/htc/Weather/AddCity$SmartSearchingModule;->this$0:Lcom/htc/Weather/AddCity;

    iget v6, v4, Lcom/htc/Weather/AddCity;->mPendingSearch:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/htc/Weather/AddCity;->mPendingSearch:I

    .line 766
    :cond_1
    iget-object v4, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;->this$1:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    #calls: Lcom/htc/Weather/AddCity$SmartSearchingModule;->coreSearch(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;
    invoke-static {v4, v2, v1, v6}, Lcom/htc/Weather/AddCity$SmartSearchingModule;->access$1000(Lcom/htc/Weather/AddCity$SmartSearchingModule;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v0

    .line 769
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;->this$1:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    iget-object v4, v4, Lcom/htc/Weather/AddCity$SmartSearchingModule;->this$0:Lcom/htc/Weather/AddCity;

    iget v4, v4, Lcom/htc/Weather/AddCity;->mPendingSearch:I

    if-nez v4, :cond_7

    .line 771
    iget-object v4, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;->this$1:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    iget-object v6, v4, Lcom/htc/Weather/AddCity$SmartSearchingModule;->ownerHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;->this$1:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    iget-object v4, v4, Lcom/htc/Weather/AddCity$SmartSearchingModule;->this$0:Lcom/htc/Weather/AddCity;

    iget v4, v4, Lcom/htc/Weather/AddCity;->mPendingSearch:I

    if-nez v4, :cond_6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v8, :cond_6

    :cond_2
    const/4 v4, 0x4

    :goto_2
    invoke-virtual {v6, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 772
    iget-object v4, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;->this$1:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    iget-object v4, v4, Lcom/htc/Weather/AddCity$SmartSearchingModule;->ownerHandler:Landroid/os/Handler;

    invoke-virtual {v4, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 778
    :cond_3
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v8, :cond_0

    :cond_4
    iget-object v4, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;->this$1:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    iget-object v4, v4, Lcom/htc/Weather/AddCity$SmartSearchingModule;->this$0:Lcom/htc/Weather/AddCity;

    invoke-virtual {v4}, Lcom/htc/Weather/AddCity;->getKeyMappingIndex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 752
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #keyMapIndex:Ljava/lang/String;
    :cond_5
    const-string v4, "pattern"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    goto :goto_1

    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #keyMapIndex:Ljava/lang/String;
    :cond_6
    move v4, v5

    .line 771
    goto :goto_2

    .line 773
    :cond_7
    if-eqz v0, :cond_3

    .line 774
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 775
    const/4 v0, 0x0

    goto :goto_3

    .line 783
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_8
    iget-object v4, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;->this$1:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    iget-object v4, v4, Lcom/htc/Weather/AddCity$SmartSearchingModule;->this$0:Lcom/htc/Weather/AddCity;

    iget v4, v4, Lcom/htc/Weather/AddCity;->mPendingSearch:I

    if-lez v4, :cond_0

    .line 784
    iget-object v4, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;->this$1:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    iget-object v4, v4, Lcom/htc/Weather/AddCity$SmartSearchingModule;->this$0:Lcom/htc/Weather/AddCity;

    iget v5, v4, Lcom/htc/Weather/AddCity;->mPendingSearch:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/htc/Weather/AddCity;->mPendingSearch:I

    goto/16 :goto_0

    .line 793
    .end local v1           #keyMapIndex:Ljava/lang/String;
    .end local v2           #mLevel:Ljava/lang/Integer;
    .end local v3           #map:Ljava/util/HashMap;
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    .line 795
    .restart local v3       #map:Ljava/util/HashMap;
    const-string v4, "level"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 796
    .restart local v2       #mLevel:Ljava/lang/Integer;
    const-string v4, "pattern"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_9

    const-string v1, ""

    .line 798
    .restart local v1       #keyMapIndex:Ljava/lang/String;
    :goto_4
    iget-object v4, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;->this$1:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    iget-object v4, v4, Lcom/htc/Weather/AddCity$SmartSearchingModule;->this$0:Lcom/htc/Weather/AddCity;

    invoke-virtual {v4}, Lcom/htc/Weather/AddCity;->getKeyMappingIndex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 799
    iget-object v4, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;->this$1:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v8}, Ljava/lang/Integer;-><init>(I)V

    #calls: Lcom/htc/Weather/AddCity$SmartSearchingModule;->coreSearch(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;
    invoke-static {v4, v2, v1, v6}, Lcom/htc/Weather/AddCity$SmartSearchingModule;->access$1000(Lcom/htc/Weather/AddCity$SmartSearchingModule;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v0

    .line 802
    .restart local v0       #cursor:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;->this$1:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    iget-object v4, v4, Lcom/htc/Weather/AddCity$SmartSearchingModule;->this$0:Lcom/htc/Weather/AddCity;

    iget v4, v4, Lcom/htc/Weather/AddCity;->mPendingSearch:I

    if-nez v4, :cond_a

    .line 803
    iget-object v4, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;->this$1:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    iget-object v4, v4, Lcom/htc/Weather/AddCity$SmartSearchingModule;->ownerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 804
    iget-object v4, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;->this$1:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    iget-object v4, v4, Lcom/htc/Weather/AddCity$SmartSearchingModule;->ownerHandler:Landroid/os/Handler;

    invoke-virtual {v4, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 796
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #keyMapIndex:Ljava/lang/String;
    :cond_9
    const-string v4, "pattern"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    goto :goto_4

    .line 805
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #keyMapIndex:Ljava/lang/String;
    :cond_a
    if-eqz v0, :cond_0

    .line 806
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 817
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #keyMapIndex:Ljava/lang/String;
    .end local v2           #mLevel:Ljava/lang/Integer;
    .end local v3           #map:Ljava/util/HashMap;
    :pswitch_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 746
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
