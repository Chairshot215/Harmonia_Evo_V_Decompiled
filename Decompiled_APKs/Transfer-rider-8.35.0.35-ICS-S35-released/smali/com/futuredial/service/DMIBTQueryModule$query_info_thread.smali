.class Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;
.super Ljava/lang/Thread;
.source "DMIBTQueryModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/service/DMIBTQueryModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "query_info_thread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/service/DMIBTQueryModule;


# direct methods
.method constructor <init>(Lcom/futuredial/service/DMIBTQueryModule;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 278
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v5, v4, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    monitor-enter v5

    .line 280
    :try_start_0
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    const/16 v6, 0x12c

    invoke-virtual {v4, v6}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(I)Z

    .line 281
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/futuredial/service/DMIBTQueryModule;->m_phoneModel:Ljava/lang/String;

    .line 282
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v4, v4, Lcom/futuredial/service/DMIBTQueryModule;->m_uuids:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 285
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v4, v4, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    const-string v6, "do SDP"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v3, 0x0

    .line 287
    .local v3, sourcePhoneUUIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    .line 289
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    invoke-virtual {v4}, Lcom/futuredial/service/DMIBTQueryModule;->dmi_do_sdp()Ljava/util/ArrayList;

    move-result-object v3

    .line 290
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 292
    :cond_0
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v4, v4, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "source phone UUID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 295
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    const/16 v6, 0x137

    invoke-virtual {v4, v6}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(I)Z

    .line 296
    monitor-exit v5

    .line 392
    :goto_1
    return-void

    .line 287
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    :cond_2
    new-instance v2, Lcom/futuredial/bluetooth/BtQueryManufacturer;

    invoke-direct {v2}, Lcom/futuredial/bluetooth/BtQueryManufacturer;-><init>()V

    .line 301
    .local v2, m_query:Lcom/futuredial/bluetooth/BtQueryManufacturer;
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v4, v4, Lcom/futuredial/service/DMIBTQueryModule;->m_target:Lcom/futuredial/service/DMIBTDevice;

    iget-object v4, v4, Lcom/futuredial/service/DMIBTDevice;->m_device:Landroid/bluetooth/BluetoothDevice;

    iget-object v6, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v6, v6, Lcom/futuredial/service/DMIBTQueryModule;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    invoke-virtual {v2, v4, v6}, Lcom/futuredial/bluetooth/BtQueryManufacturer;->SetBTRemote(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V

    .line 302
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    #calls: Lcom/futuredial/service/DMIBTQueryModule;->has_dun(Ljava/util/ArrayList;)Z
    invoke-static {v4, v3}, Lcom/futuredial/service/DMIBTQueryModule;->access$100(Lcom/futuredial/service/DMIBTQueryModule;Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v3}, Lcom/futuredial/bluetooth/BtQueryManufacturer;->HasNokiaService(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 305
    :cond_3
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v4, v4, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    const-string v6, "work with DUN"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :try_start_1
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    #calls: Lcom/futuredial/service/DMIBTQueryModule;->has_dun(Ljava/util/ArrayList;)Z
    invoke-static {v4, v3}, Lcom/futuredial/service/DMIBTQueryModule;->access$100(Lcom/futuredial/service/DMIBTQueryModule;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 308
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    invoke-virtual {v2}, Lcom/futuredial/bluetooth/BtQueryManufacturer;->QueryInfo()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/futuredial/service/DMIBTQueryModule;->m_phoneModel:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_1 .. :try_end_1} :catch_0

    .line 324
    :cond_4
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v4, v4, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(modem query) phone model:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v7, v7, Lcom/futuredial/service/DMIBTQueryModule;->m_phoneModel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v4, v4, Lcom/futuredial/service/DMIBTQueryModule;->m_phoneModel:Ljava/lang/String;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v4, v4, Lcom/futuredial/service/DMIBTQueryModule;->m_phoneModel:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_b

    .line 328
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    const/16 v6, 0x130

    iget-object v7, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v7, v7, Lcom/futuredial/service/DMIBTQueryModule;->m_phoneModel:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(ILjava/lang/Object;)Z

    .line 329
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    const/16 v6, 0x12f

    invoke-virtual {v4, v6}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(I)Z

    .line 330
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    #calls: Lcom/futuredial/service/DMIBTQueryModule;->query_xml()Z
    invoke-static {v4}, Lcom/futuredial/service/DMIBTQueryModule;->access$200(Lcom/futuredial/service/DMIBTQueryModule;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 331
    monitor-exit v5

    goto/16 :goto_1

    .line 391
    .end local v1           #i:I
    .end local v2           #m_query:Lcom/futuredial/bluetooth/BtQueryManufacturer;
    .end local v3           #sourcePhoneUUIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 310
    .restart local v1       #i:I
    .restart local v2       #m_query:Lcom/futuredial/bluetooth/BtQueryManufacturer;
    .restart local v3       #sourcePhoneUUIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    :try_start_3
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    invoke-virtual {v2}, Lcom/futuredial/bluetooth/BtQueryManufacturer;->QueryNokiaInfo()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/futuredial/service/DMIBTQueryModule;->m_phoneModel:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Lcom/futuredial/bluetooth/ExceptionForUI;
    :try_start_4
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v4, v4, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    const-string v6, "dun query rejected/timeout"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/futuredial/service/DMIBTQueryModule;->m_phoneModel:Ljava/lang/String;

    .line 316
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget v6, v4, Lcom/futuredial/service/DMIBTQueryModule;->m_failedCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/futuredial/service/DMIBTQueryModule;->m_failedCount:I

    .line 317
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget v4, v4, Lcom/futuredial/service/DMIBTQueryModule;->m_failedCount:I

    sget v6, Lcom/futuredial/service/DMIBTQueryModule;->QUERY_FAIL_TIMEOUT_LIMIT:I

    if-ge v4, v6, :cond_4

    .line 319
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    const/16 v6, 0x12d

    invoke-virtual {v4, v6}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(I)Z

    .line 320
    monitor-exit v5

    goto/16 :goto_1

    .line 333
    .end local v0           #e:Lcom/futuredial/bluetooth/ExceptionForUI;
    :cond_6
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v6, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v6, v6, Lcom/futuredial/service/DMIBTQueryModule;->m_phoneModel:Ljava/lang/String;

    #calls: Lcom/futuredial/service/DMIBTQueryModule;->IfInManufacturesList(Ljava/lang/String;)Z
    invoke-static {v4, v6}, Lcom/futuredial/service/DMIBTQueryModule;->access$300(Lcom/futuredial/service/DMIBTQueryModule;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 334
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v6, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v6, v6, Lcom/futuredial/service/DMIBTQueryModule;->m_curPhoneModel:Ljava/lang/String;

    iput-object v6, v4, Lcom/futuredial/service/DMIBTQueryModule;->m_phoneModel:Ljava/lang/String;

    .line 336
    :cond_7
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v6, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v6, v6, Lcom/futuredial/service/DMIBTQueryModule;->m_phoneModel:Ljava/lang/String;

    #calls: Lcom/futuredial/service/DMIBTQueryModule;->IfInSpecialList(Ljava/lang/String;)Z
    invoke-static {v4, v6}, Lcom/futuredial/service/DMIBTQueryModule;->access$400(Lcom/futuredial/service/DMIBTQueryModule;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 337
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v6, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v6, v6, Lcom/futuredial/service/DMIBTQueryModule;->m_phoneModel:Ljava/lang/String;

    #calls: Lcom/futuredial/service/DMIBTQueryModule;->IfIsRIM(Ljava/lang/String;)Z
    invoke-static {v4, v6}, Lcom/futuredial/service/DMIBTQueryModule;->access$500(Lcom/futuredial/service/DMIBTQueryModule;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 338
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    #calls: Lcom/futuredial/service/DMIBTQueryModule;->query_xml()Z
    invoke-static {v4}, Lcom/futuredial/service/DMIBTQueryModule;->access$200(Lcom/futuredial/service/DMIBTQueryModule;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 339
    monitor-exit v5

    goto/16 :goto_1

    .line 341
    :cond_8
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    const/4 v6, 0x1

    #calls: Lcom/futuredial/service/DMIBTQueryModule;->do_pbap(Ljava/util/ArrayList;Z)Z
    invoke-static {v4, v3, v6}, Lcom/futuredial/service/DMIBTQueryModule;->access$600(Lcom/futuredial/service/DMIBTQueryModule;Ljava/util/ArrayList;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 342
    monitor-exit v5

    goto/16 :goto_1

    .line 346
    :cond_9
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v4, v4, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    const-string v6, "not supported phone model.(has modem,)"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    const/16 v6, 0x136

    invoke-virtual {v4, v6}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(I)Z

    .line 391
    :cond_a
    :goto_3
    monitor-exit v5

    goto/16 :goto_1

    .line 354
    :cond_b
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v6, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v6, v6, Lcom/futuredial/service/DMIBTQueryModule;->m_curPhoneModel:Ljava/lang/String;

    #calls: Lcom/futuredial/service/DMIBTQueryModule;->IfInSpecialList(Ljava/lang/String;)Z
    invoke-static {v4, v6}, Lcom/futuredial/service/DMIBTQueryModule;->access$400(Lcom/futuredial/service/DMIBTQueryModule;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 355
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v6, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v6, v6, Lcom/futuredial/service/DMIBTQueryModule;->m_curPhoneModel:Ljava/lang/String;

    #calls: Lcom/futuredial/service/DMIBTQueryModule;->IfIsRIM(Ljava/lang/String;)Z
    invoke-static {v4, v6}, Lcom/futuredial/service/DMIBTQueryModule;->access$500(Lcom/futuredial/service/DMIBTQueryModule;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 356
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    const-string v6, "BlackBerry"

    iput-object v6, v4, Lcom/futuredial/service/DMIBTQueryModule;->m_phoneModel:Ljava/lang/String;

    .line 357
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    #calls: Lcom/futuredial/service/DMIBTQueryModule;->query_xml()Z
    invoke-static {v4}, Lcom/futuredial/service/DMIBTQueryModule;->access$200(Lcom/futuredial/service/DMIBTQueryModule;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 358
    monitor-exit v5

    goto/16 :goto_1

    .line 360
    :cond_c
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    #calls: Lcom/futuredial/service/DMIBTQueryModule;->do_pbap(Ljava/util/ArrayList;)Z
    invoke-static {v4, v3}, Lcom/futuredial/service/DMIBTQueryModule;->access$700(Lcom/futuredial/service/DMIBTQueryModule;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 361
    monitor-exit v5

    goto/16 :goto_1

    .line 364
    :cond_d
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v4, v4, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    const-string v6, "user rejected connection request -> MUST resume"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget v6, v4, Lcom/futuredial/service/DMIBTQueryModule;->m_failedCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/futuredial/service/DMIBTQueryModule;->m_failedCount:I

    .line 366
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget v4, v4, Lcom/futuredial/service/DMIBTQueryModule;->m_failedCount:I

    sget v6, Lcom/futuredial/service/DMIBTQueryModule;->QUERY_FAIL_TIMEOUT_LIMIT:I

    if-lt v4, v6, :cond_e

    .line 367
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    const/16 v6, 0x12e

    invoke-virtual {v4, v6}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(I)Z

    .line 370
    :goto_4
    monitor-exit v5

    goto/16 :goto_1

    .line 369
    :cond_e
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    const/16 v6, 0x12d

    invoke-virtual {v4, v6}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(I)Z

    goto :goto_4

    .line 389
    :cond_f
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    const/4 v6, 0x1

    #calls: Lcom/futuredial/service/DMIBTQueryModule;->do_pbap(Ljava/util/ArrayList;Z)Z
    invoke-static {v4, v3, v6}, Lcom/futuredial/service/DMIBTQueryModule;->access$600(Lcom/futuredial/service/DMIBTQueryModule;Ljava/util/ArrayList;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method
