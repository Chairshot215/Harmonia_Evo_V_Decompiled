.class Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;
.super Landroid/os/Handler;
.source "QXDM2SD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/qxdm2sd/QXDM2SD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;


# direct methods
.method public constructor <init>(Lcom/htc/android/qxdm2sd/QXDM2SD;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    .line 1220
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1221
    return-void
.end method

.method private worker_delete_log()V
    .locals 5

    .prologue
    .line 1231
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$500(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".dm"

    #calls: Lcom/htc/android/qxdm2sd/QXDM2SD;->getFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v3, v4}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1500(Lcom/htc/android/qxdm2sd/QXDM2SD;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1233
    .local v1, logList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1235
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1237
    const-string v2, "QXDM2SD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "worker_delete_log: delete ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1241
    .end local v0           #idx:I
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    const-wide/16 v5, 0x3e8

    const/16 v4, 0xb

    .line 1246
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1346
    const-string v1, "QXDM2SD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WorkerHandler: unknow MSG : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    :goto_0
    return-void

    .line 1249
    :sswitch_0
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    invoke-static {}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getDaemonPID()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    #setter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mDaemonRunning:Z
    invoke-static {v2, v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1602(Lcom/htc/android/qxdm2sd/QXDM2SD;Z)Z

    .line 1250
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$300(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 1252
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$300(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mDaemonRunning:Z
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1600(Lcom/htc/android/qxdm2sd/QXDM2SD;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->setRunning(Z)V

    .line 1250
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1254
    :cond_1
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    invoke-static {}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getDaemonStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mAllDiagStatus:[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$802(Lcom/htc/android/qxdm2sd/QXDM2SD;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1255
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1259
    .end local v0           #i:I
    :sswitch_1
    const-string v1, "QXDM2SD"

    const-string v2, "WorkerHandler: MSG_START_LOGGER: begin"

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/Device$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "starting ..."

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1261
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$300(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    .line 1263
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$300(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1261
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1266
    :cond_3
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$300(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getStartATCommand()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1269
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mAtCmdList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1100(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$300(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getStartATCommand()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1274
    :cond_4
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1275
    const-string v1, "QXDM2SD"

    const-string v2, "WorkerHandler: MSG_START_LOGGER: end"

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/Device$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1279
    .end local v0           #i:I
    :sswitch_2
    const-string v1, "QXDM2SD"

    const-string v2, "WorkerHandler: MSG_START_LOGGER_DONE: begin"

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/Device$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    invoke-static {v8}, Lcom/htc/android/qxdm2sd/QXDM2SD;->runDaemon(Ljava/lang/String;)I

    .line 1281
    invoke-static {}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getDaemonPID()I

    move-result v1

    if-nez v1, :cond_5

    .line 1283
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$400(Lcom/htc/android/qxdm2sd/QXDM2SD;)Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$400(Lcom/htc/android/qxdm2sd/QXDM2SD;)Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    move-result-object v2

    const/16 v3, 0x3ee

    invoke-virtual {v2, v3}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1290
    :goto_4
    const-string v1, "QXDM2SD"

    const-string v2, "WorkerHandler: MSG_START_LOGGER_DONE: end"

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/Device$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1287
    :cond_5
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1288
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$400(Lcom/htc/android/qxdm2sd/QXDM2SD;)Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$400(Lcom/htc/android/qxdm2sd/QXDM2SD;)Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    .line 1294
    :sswitch_3
    const-string v1, "QXDM2SD"

    const-string v2, "WorkerHandler: MSG_STOP_LOGGER: begin"

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/Device$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "stopping ..."

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1296
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$300(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_8

    .line 1298
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$300(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1296
    :cond_6
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1301
    :cond_7
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$300(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getStopATCommand()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1304
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mAtCmdList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1100(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$300(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getStopATCommand()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1309
    :cond_8
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1310
    const-string v1, "QXDM2SD"

    const-string v2, "WorkerHandler: MSG_STOP_LOGGER: end"

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/Device$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1314
    .end local v0           #i:I
    :sswitch_4
    const-string v1, "QXDM2SD"

    const-string v2, "WorkerHandler: MSG_STOP_LOGGER_DONE: begin"

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/Device$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string v1, "-q"

    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->runDaemon(Ljava/lang/String;)I

    .line 1316
    invoke-static {}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getDaemonPID()I

    move-result v1

    if-nez v1, :cond_9

    .line 1318
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1319
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$400(Lcom/htc/android/qxdm2sd/QXDM2SD;)Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$400(Lcom/htc/android/qxdm2sd/QXDM2SD;)Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1325
    :goto_7
    const-string v1, "QXDM2SD"

    const-string v2, "WorkerHandler: MSG_STOP_LOGGER_DONE: end"

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/Device$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1323
    :cond_9
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$400(Lcom/htc/android/qxdm2sd/QXDM2SD;)Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$400(Lcom/htc/android/qxdm2sd/QXDM2SD;)Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    move-result-object v2

    const/16 v3, 0x3ef

    invoke-virtual {v2, v3}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7

    .line 1329
    :sswitch_5
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "deleting all logs ..."

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1330
    invoke-direct {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->worker_delete_log()V

    .line 1331
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1332
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$400(Lcom/htc/android/qxdm2sd/QXDM2SD;)Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$400(Lcom/htc/android/qxdm2sd/QXDM2SD;)Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1336
    :sswitch_6
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1340
    :sswitch_7
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "checking mask files ..."

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1341
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$500(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".dat"

    #calls: Lcom/htc/android/qxdm2sd/QXDM2SD;->getFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v3, v4}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1500(Lcom/htc/android/qxdm2sd/QXDM2SD;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mMaskList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$102(Lcom/htc/android/qxdm2sd/QXDM2SD;Ljava/util/List;)Ljava/util/List;

    .line 1342
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1246
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_3
        0xa -> :sswitch_5
        0xc -> :sswitch_7
        0x3ee -> :sswitch_2
        0x3ef -> :sswitch_4
    .end sparse-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 1227
    return-void
.end method
