.class Lcom/futuredial/service/DMIBTQueryModule$query_history_thread;
.super Ljava/lang/Thread;
.source "DMIBTQueryModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/service/DMIBTQueryModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "query_history_thread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/service/DMIBTQueryModule;


# direct methods
.method constructor <init>(Lcom/futuredial/service/DMIBTQueryModule;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/futuredial/service/DMIBTQueryModule$query_history_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 400
    iget-object v6, p0, Lcom/futuredial/service/DMIBTQueryModule$query_history_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v7, v6, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    monitor-enter v7

    .line 402
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 403
    .local v5, opMark:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/futuredial/service/DMIBTQueryModule$query_history_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v6, v6, Lcom/futuredial/service/DMIBTQueryModule;->m_service:Landroid/app/Service;

    iget-object v8, p0, Lcom/futuredial/service/DMIBTQueryModule$query_history_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v8, v8, Lcom/futuredial/service/DMIBTQueryModule;->m_phone:Lcom/futuredial/service/DMIPhone;

    invoke-static {v6, v8}, Lcom/futuredial/service/CHistoryManager;->load_history_file(Landroid/content/Context;Lcom/futuredial/service/DMIPhone;)Lcom/futuredial/ui/DataStructures$SerialOpHistory;

    move-result-object v4

    .line 405
    .local v4, opHistory:Lcom/futuredial/ui/DataStructures$SerialOpHistory;
    iget-object v6, p0, Lcom/futuredial/service/DMIBTQueryModule$query_history_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v6, v6, Lcom/futuredial/service/DMIBTQueryModule;->m_target:Lcom/futuredial/service/DMIBTDevice;

    iget-object v6, v6, Lcom/futuredial/service/DMIBTDevice;->m_address:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/futuredial/ui/DataStructures$SerialOpHistory;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-ne v10, v6, :cond_0

    .line 406
    iget-object v6, p0, Lcom/futuredial/service/DMIBTQueryModule$query_history_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v6, v6, Lcom/futuredial/service/DMIBTQueryModule;->m_target:Lcom/futuredial/service/DMIBTDevice;

    iget-object v6, v6, Lcom/futuredial/service/DMIBTDevice;->m_address:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/futuredial/ui/DataStructures$SerialOpHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #opMark:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    check-cast v5, Ljava/util/HashMap;

    .line 407
    .restart local v5       #opMark:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    iget-object v6, p0, Lcom/futuredial/service/DMIBTQueryModule$query_history_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v6, v6, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pre-op-result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v6, p0, Lcom/futuredial/service/DMIBTQueryModule$query_history_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    const/16 v8, 0x134

    invoke-virtual {v6, v8, v4}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(ILjava/lang/Object;)Z

    .line 415
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v1, importedMod:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/service/DMIPhone$DMIPhoneModule;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/futuredial/service/DMIBTQueryModule$query_history_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v6, v6, Lcom/futuredial/service/DMIBTQueryModule;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v6, v6, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 419
    iget-object v6, p0, Lcom/futuredial/service/DMIBTQueryModule$query_history_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v6, v6, Lcom/futuredial/service/DMIBTQueryModule;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v6, v6, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    iget-object v3, v6, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    .line 420
    .local v3, mid:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/futuredial/service/DMIBTQueryModule$query_history_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v6, v6, Lcom/futuredial/service/DMIBTQueryModule;->m_phone:Lcom/futuredial/service/DMIPhone;

    invoke-virtual {v6, v3}, Lcom/futuredial/service/DMIPhone;->get_modulebyID(Ljava/lang/Integer;)Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    move-result-object v2

    .line 421
    .local v2, m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 423
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_preResult:I

    .line 424
    iget v6, v2, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_preResult:I

    if-ne v6, v10, :cond_1

    iget-object v6, v2, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_pim:Lcom/futuredial/pim/CPim;

    invoke-virtual {v6}, Lcom/futuredial/pim/CPim;->getCounts()I

    move-result v6

    if-eqz v6, :cond_1

    .line 426
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_bImported:Z

    .line 427
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    .end local v2           #m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    .end local v3           #mid:Ljava/lang/Integer;
    :cond_2
    iget-object v6, p0, Lcom/futuredial/service/DMIBTQueryModule$query_history_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    const/16 v8, 0x135

    invoke-virtual {v6, v8, v1}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(ILjava/lang/Object;)Z

    .line 434
    monitor-exit v7

    .line 435
    return-void

    .line 434
    .end local v0           #i:I
    .end local v1           #importedMod:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/service/DMIPhone$DMIPhoneModule;>;"
    .end local v4           #opHistory:Lcom/futuredial/ui/DataStructures$SerialOpHistory;
    .end local v5           #opMark:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
