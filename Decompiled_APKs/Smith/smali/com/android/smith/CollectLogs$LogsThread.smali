.class Lcom/android/smith/CollectLogs$LogsThread;
.super Ljava/lang/Thread;
.source "CollectLogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/CollectLogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogsThread"
.end annotation


# instance fields
.field private func:I

.field private id:I

.field private mFiles:[Ljava/lang/String;

.field private msgFinish:I

.field private msgTextAppend:I

.field private msgTextSet:I

.field private path:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/smith/CollectLogs;

.field private trystop:Z


# direct methods
.method public constructor <init>(Lcom/android/smith/CollectLogs;III)V
    .locals 7
    .parameter
    .parameter "id"
    .parameter "func"
    .parameter "msgFinish"

    .prologue
    .line 956
    const/4 v5, 0x3

    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/smith/CollectLogs$LogsThread;-><init>(Lcom/android/smith/CollectLogs;IIIII)V

    .line 957
    return-void
.end method

.method public constructor <init>(Lcom/android/smith/CollectLogs;IIIII)V
    .locals 3
    .parameter
    .parameter "id"
    .parameter "func"
    .parameter "msgFinish"
    .parameter "msgTextSet"
    .parameter "msgTextAppend"

    .prologue
    .line 915
    iput-object p1, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 906
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    .line 908
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/smith/CollectLogs$LogsThread;->trystop:Z

    .line 916
    iput p2, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    .line 917
    iput p3, p0, Lcom/android/smith/CollectLogs$LogsThread;->func:I

    .line 918
    iput p4, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgFinish:I

    .line 919
    iput p5, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextSet:I

    .line 920
    iput p6, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    .line 922
    packed-switch p2, :pswitch_data_0

    .line 934
    const-string v0, "SM:CollectLogs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown id in logs thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :goto_0
    packed-switch p3, :pswitch_data_1

    .line 949
    const-string v0, "SM:CollectLogs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown func in logs thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/smith/CollectLogs$LogsThread;->func:I

    .line 952
    :goto_1
    return-void

    .line 925
    :pswitch_0
    const-string v0, "/data/data/com.android.smith/htclog/"

    iput-object v0, p0, Lcom/android/smith/CollectLogs$LogsThread;->path:Ljava/lang/String;

    goto :goto_0

    .line 928
    :pswitch_1
    invoke-static {}, Lcom/android/smith/CollectLogs;->access$2900()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/smith/CollectLogs$LogsThread;->path:Ljava/lang/String;

    goto :goto_0

    .line 931
    :pswitch_2
    invoke-static {}, Lcom/android/smith/CollectLogs;->access$3000()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/smith/CollectLogs$LogsThread;->path:Ljava/lang/String;

    goto :goto_0

    .line 940
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findlogs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs$LogsThread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 943
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movelogs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs$LogsThread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 946
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadlogs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs$LogsThread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 922
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 937
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private delay(I)V
    .locals 2
    .parameter "milli"

    .prologue
    .line 1226
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    :goto_0
    return-void

    .line 1228
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private findLogs()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 978
    const/4 v0, 0x0

    .line 980
    .local v0, count:I
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/smith/CollectLogs$LogsThread;->path:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/smith/CollectLogs$MyFilenameFilter;

    iget-object v6, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    const-string v7, ""

    invoke-direct {v5, v6, v7, v10}, Lcom/android/smith/CollectLogs$MyFilenameFilter;-><init>(Lcom/android/smith/CollectLogs;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    .line 982
    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 984
    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    array-length v0, v4

    .line 986
    const/16 v4, 0x64

    if-le v0, v4, :cond_0

    .line 988
    const/16 v0, 0x64

    .line 991
    :cond_0
    iget-boolean v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->trystop:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextSet:I

    if-lez v4, :cond_1

    .line 993
    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v5

    iget v6, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextSet:I

    iget v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    const-string v8, ""

    invoke-virtual {v5, v6, v7, v10, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 996
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-boolean v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->trystop:Z

    if-nez v4, :cond_4

    add-int/lit8 v4, v0, -0x1

    if-ge v1, v4, :cond_4

    .line 998
    add-int/lit8 v2, v1, 0x1

    .local v2, j:I
    :goto_1
    iget-boolean v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->trystop:Z

    if-nez v4, :cond_3

    if-ge v2, v0, :cond_3

    .line 1000
    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    .line 1002
    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    aget-object v3, v4, v1

    .line 1003
    .local v3, tmp:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    aget-object v5, v5, v2

    aput-object v5, v4, v1

    .line 1004
    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    aput-object v3, v4, v2

    .line 998
    .end local v3           #tmp:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 996
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1009
    .end local v2           #j:I
    :cond_4
    iget v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    if-lez v4, :cond_5

    .line 1011
    const/4 v1, 0x0

    :goto_2
    iget-boolean v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->trystop:Z

    if-nez v4, :cond_5

    if-ge v1, v0, :cond_5

    .line 1013
    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v5

    iget v6, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    iget v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v10, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1011
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1018
    .end local v1           #i:I
    :cond_5
    iget v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    packed-switch v4, :pswitch_data_0

    .line 1031
    :goto_3
    iget-boolean v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->trystop:Z

    if-nez v4, :cond_7

    .line 1033
    iget v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    if-lez v4, :cond_6

    .line 1035
    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v5

    iget v6, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    iget v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    const-string v8, "--"

    invoke-virtual {v5, v6, v7, v10, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1037
    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    array-length v4, v4

    if-eq v0, v4, :cond_6

    .line 1039
    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v5

    iget v6, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    iget v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    const-string v8, "\nToo many files, stop listing."

    invoke-virtual {v5, v6, v7, v10, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1042
    :cond_6
    iget v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgFinish:I

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v5

    iget v6, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgFinish:I

    iget v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    invoke-virtual {v5, v6, v7, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1044
    :cond_7
    return-void

    .line 1021
    :pswitch_0
    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/smith/CollectLogs;->access$3302([Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_3

    .line 1024
    :pswitch_1
    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/smith/CollectLogs;->access$3402([Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_3

    .line 1027
    :pswitch_2
    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/smith/CollectLogs;->access$3502([Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_3

    .line 1018
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private moveLogs()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1048
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    .line 1050
    iget v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    packed-switch v1, :pswitch_data_0

    .line 1063
    :goto_0
    iget-object v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_4

    .line 1065
    :cond_0
    iget v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextSet:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextSet:I

    iget v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    const-string v5, "Nothing to move.\n"

    invoke-virtual {v2, v3, v4, v7, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1099
    :cond_1
    iget v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v2

    iget-object v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v3

    iget v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    iget v5, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    iget-boolean v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->trystop:Z

    if-eqz v1, :cond_8

    const-string v1, "User stopped.\n"

    :goto_1
    invoke-virtual {v3, v4, v5, v7, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1101
    :cond_2
    iget v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgFinish:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgFinish:I

    iget v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    invoke-virtual {v2, v3, v4, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1102
    :cond_3
    return-void

    .line 1053
    :pswitch_0
    invoke-static {}, Lcom/android/smith/CollectLogs;->access$3300()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    goto :goto_0

    .line 1056
    :pswitch_1
    invoke-static {}, Lcom/android/smith/CollectLogs;->access$3400()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    goto :goto_0

    .line 1059
    :pswitch_2
    invoke-static {}, Lcom/android/smith/CollectLogs;->access$3500()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    goto :goto_0

    .line 1069
    :cond_4
    iget v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextSet:I

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextSet:I

    iget v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " files ...\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v7, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1071
    :cond_5
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-boolean v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->trystop:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1086
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "sh"

    aput-object v2, v1, v7

    const-string v2, "-c"

    aput-object v2, v1, v8

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/smith/CollectLogs;->access$3000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " && rm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/android/smith/Device;->execAndWait([Ljava/lang/String;)I

    .line 1088
    iget-object v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    array-length v1, v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_7

    .line 1090
    iget v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    iget v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  [ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v8, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1071
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1094
    :cond_7
    iget v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    iget v4, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/smith/CollectLogs$LogsThread;->mFiles:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v7, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 1099
    .end local v0           #i:I
    :cond_8
    const-string v1, "Done.\n"

    goto/16 :goto_1

    .line 1050
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private uploadLogs()V
    .locals 14

    .prologue
    .line 1106
    const/16 v4, 0x15

    .line 1107
    .local v4, port:I
    const/4 v6, 0x0

    .line 1108
    .local v6, uploads:I
    const/4 v1, 0x0

    .line 1109
    .local v1, fail_uploads:I
    const/4 v5, 0x0

    .line 1113
    .local v5, total_uploads:I
    :try_start_0
    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpPort:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$1900(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1120
    :goto_0
    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    new-instance v8, Lcom/android/smith/FtpClient;

    invoke-direct {v8}, Lcom/android/smith/FtpClient;-><init>()V

    #setter for: Lcom/android/smith/CollectLogs;->ftpclient:Lcom/android/smith/FtpClient;
    invoke-static {v7, v8}, Lcom/android/smith/CollectLogs;->access$3102(Lcom/android/smith/CollectLogs;Lcom/android/smith/FtpClient;)Lcom/android/smith/FtpClient;

    .line 1124
    :try_start_1
    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->ftpclient:Lcom/android/smith/FtpClient;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3100(Lcom/android/smith/CollectLogs;)Lcom/android/smith/FtpClient;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/smith/FtpClient;->tryStop(Z)V

    .line 1125
    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->ftpclient:Lcom/android/smith/FtpClient;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3100(Lcom/android/smith/CollectLogs;)Lcom/android/smith/FtpClient;

    move-result-object v7

    iget-object v8, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpHost:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/smith/CollectLogs;->access$1800(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/smith/FtpClient;->setHost(Ljava/lang/String;)V

    .line 1126
    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->ftpclient:Lcom/android/smith/FtpClient;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3100(Lcom/android/smith/CollectLogs;)Lcom/android/smith/FtpClient;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/smith/FtpClient;->setPort(I)V

    .line 1127
    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->ftpclient:Lcom/android/smith/FtpClient;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3100(Lcom/android/smith/CollectLogs;)Lcom/android/smith/FtpClient;

    move-result-object v7

    iget-object v8, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpUser:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/smith/CollectLogs;->access$2000(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/smith/FtpClient;->setUser(Ljava/lang/String;)V

    .line 1128
    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->ftpclient:Lcom/android/smith/FtpClient;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3100(Lcom/android/smith/CollectLogs;)Lcom/android/smith/FtpClient;

    move-result-object v7

    iget-object v8, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpPass:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/smith/CollectLogs;->access$2100(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/smith/FtpClient;->setPass(Ljava/lang/String;)V

    .line 1130
    iget v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextSet:I

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v8

    iget v9, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextSet:I

    iget v10, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Connecting to:\n  HOST:["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpHost:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/smith/CollectLogs;->access$1800(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]\n  PORT:["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]\n  USER:["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpUser:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/smith/CollectLogs;->access$2000(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1132
    :cond_0
    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->ftpclient:Lcom/android/smith/FtpClient;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3100(Lcom/android/smith/CollectLogs;)Lcom/android/smith/FtpClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/smith/FtpClient;->connect()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1134
    iget v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v8

    iget v9, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    iget v10, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    const/4 v11, 0x0

    const-string v12, "Login failed!\n"

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1213
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->ftpclient:Lcom/android/smith/FtpClient;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3100(Lcom/android/smith/CollectLogs;)Lcom/android/smith/FtpClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/smith/FtpClient;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1215
    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->ftpclient:Lcom/android/smith/FtpClient;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3100(Lcom/android/smith/CollectLogs;)Lcom/android/smith/FtpClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/smith/FtpClient;->disconnect()V

    .line 1216
    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v8, 0x0

    #setter for: Lcom/android/smith/CollectLogs;->ftpclient:Lcom/android/smith/FtpClient;
    invoke-static {v7, v8}, Lcom/android/smith/CollectLogs;->access$3102(Lcom/android/smith/CollectLogs;Lcom/android/smith/FtpClient;)Lcom/android/smith/FtpClient;

    .line 1219
    :cond_2
    iget v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgFinish:I

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v8

    iget v9, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgFinish:I

    iget v10, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1220
    :cond_3
    return-void

    .line 1115
    :catch_0
    move-exception v0

    .line 1117
    .local v0, e:Ljava/lang/Exception;
    const/16 v4, 0x15

    goto/16 :goto_0

    .line 1138
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_2
    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mThreadItems:[Ljava/lang/CharSequence;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3600(Lcom/android/smith/CollectLogs;)[Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_5

    .line 1140
    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/CharSequence;

    #setter for: Lcom/android/smith/CollectLogs;->mThreadItems:[Ljava/lang/CharSequence;
    invoke-static {v7, v8}, Lcom/android/smith/CollectLogs;->access$3602(Lcom/android/smith/CollectLogs;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 1143
    :cond_5
    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mThreadCheckbox:[Z
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$2700(Lcom/android/smith/CollectLogs;)[Z

    move-result-object v7

    if-nez v7, :cond_6

    .line 1145
    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    iget-object v8, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mThreadItems:[Ljava/lang/CharSequence;
    invoke-static {v8}, Lcom/android/smith/CollectLogs;->access$3600(Lcom/android/smith/CollectLogs;)[Ljava/lang/CharSequence;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [Z

    #setter for: Lcom/android/smith/CollectLogs;->mThreadCheckbox:[Z
    invoke-static {v7, v8}, Lcom/android/smith/CollectLogs;->access$2702(Lcom/android/smith/CollectLogs;[Z)[Z

    .line 1148
    :cond_6
    const/4 v3, 0x1

    .local v3, i:I
    :goto_2
    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mThreadItems:[Ljava/lang/CharSequence;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3600(Lcom/android/smith/CollectLogs;)[Ljava/lang/CharSequence;

    move-result-object v7

    array-length v7, v7

    if-ge v3, v7, :cond_8

    .line 1150
    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mThreadCheckbox:[Z
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$2700(Lcom/android/smith/CollectLogs;)[Z

    move-result-object v7

    aget-boolean v7, v7, v3

    if-eqz v7, :cond_7

    .line 1152
    add-int/lit8 v5, v5, 0x1

    .line 1148
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1156
    :cond_8
    iget v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    if-lez v7, :cond_9

    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v8

    iget v9, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    iget v10, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Connected.\nUploading "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " files ...\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1158
    :cond_9
    const/4 v3, 0x1

    :goto_3
    iget-boolean v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->trystop:Z

    if-nez v7, :cond_12

    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mThreadItems:[Ljava/lang/CharSequence;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3600(Lcom/android/smith/CollectLogs;)[Ljava/lang/CharSequence;

    move-result-object v7

    array-length v7, v7

    if-ge v3, v7, :cond_12

    .line 1160
    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mThreadCheckbox:[Z
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$2700(Lcom/android/smith/CollectLogs;)[Z

    move-result-object v7

    aget-boolean v7, v7, v3

    if-eqz v7, :cond_f

    .line 1162
    const/16 v7, 0x64

    if-le v5, v7, :cond_10

    .line 1164
    iget v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    if-lez v7, :cond_a

    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v8

    iget v9, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    iget v10, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  [ "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " / "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ] fail: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1171
    :cond_a
    :goto_4
    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpPath:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$2200(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1173
    .local v2, ftpPath:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-eq v7, v8, :cond_b

    .line 1174
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1176
    :cond_b
    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->ftpclient:Lcom/android/smith/FtpClient;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3100(Lcom/android/smith/CollectLogs;)Lcom/android/smith/FtpClient;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/smith/CollectLogs$LogsThread;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mThreadItems:[Ljava/lang/CharSequence;
    invoke-static {v9}, Lcom/android/smith/CollectLogs;->access$3600(Lcom/android/smith/CollectLogs;)[Ljava/lang/CharSequence;

    move-result-object v9

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Lcom/android/smith/FtpClient;->upload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1178
    add-int/lit8 v6, v6, 0x1

    .line 1183
    iget v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mCheckInternalRemove:Landroid/widget/CheckBox;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$1200(Lcom/android/smith/CollectLogs;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-nez v7, :cond_e

    :cond_c
    iget v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_d

    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mCheckPhoneRemove:Landroid/widget/CheckBox;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$1700(Lcom/android/smith/CollectLogs;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-nez v7, :cond_e

    :cond_d
    iget v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_f

    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mCheckExternalRemove:Landroid/widget/CheckBox;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3700(Lcom/android/smith/CollectLogs;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1187
    :cond_e
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/smith/CollectLogs$LogsThread;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mThreadItems:[Ljava/lang/CharSequence;
    invoke-static {v9}, Lcom/android/smith/CollectLogs;->access$3600(Lcom/android/smith/CollectLogs;)[Ljava/lang/CharSequence;

    move-result-object v9

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1158
    .end local v2           #ftpPath:Ljava/lang/String;
    :cond_f
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 1168
    :cond_10
    iget v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    if-lez v7, :cond_a

    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v8

    iget v9, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    iget v10, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mThreadItems:[Ljava/lang/CharSequence;
    invoke-static {v13}, Lcom/android/smith/CollectLogs;->access$3600(Lcom/android/smith/CollectLogs;)[Ljava/lang/CharSequence;

    move-result-object v13

    aget-object v13, v13, v3

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 1200
    .end local v3           #i:I
    :catch_1
    move-exception v0

    .line 1202
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v7, "SM:CollectLogs"

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    iget v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v8

    iget v9, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    iget v10, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "!\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1192
    .end local v0           #e:Ljava/net/UnknownHostException;
    .restart local v2       #ftpPath:Ljava/lang/String;
    .restart local v3       #i:I
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 1197
    .end local v2           #ftpPath:Ljava/lang/String;
    :cond_12
    :try_start_3
    iget v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v8

    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v9

    iget v10, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    iget v11, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    const/4 v12, 0x0

    iget-boolean v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->trystop:Z

    if-eqz v7, :cond_13

    const-string v7, "User stopped.\n"

    :goto_6
    invoke-virtual {v9, v10, v11, v12, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 1206
    .end local v3           #i:I
    :catch_2
    move-exception v0

    .line 1208
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "SM:CollectLogs"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    iget v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v8

    iget v9, p0, Lcom/android/smith/CollectLogs$LogsThread;->msgTextAppend:I

    iget v10, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "!\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1197
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #i:I
    :cond_13
    :try_start_4
    const-string v7, "Done.\n"
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6
.end method


# virtual methods
.method public isTryStopped()Z
    .locals 1

    .prologue
    .line 973
    iget-boolean v0, p0, Lcom/android/smith/CollectLogs$LogsThread;->trystop:Z

    return v0
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 1235
    const-string v0, "SM:CollectLogs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin of logs thread, id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/smith/CollectLogs$LogsThread;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", func = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/smith/CollectLogs$LogsThread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    iget v0, p0, Lcom/android/smith/CollectLogs$LogsThread;->func:I

    packed-switch v0, :pswitch_data_0

    .line 1252
    :goto_0
    const-string v0, "SM:CollectLogs"

    const-string v1, "end of logs thread."

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    return-void

    .line 1240
    :pswitch_0
    invoke-direct {p0}, Lcom/android/smith/CollectLogs$LogsThread;->findLogs()V

    goto :goto_0

    .line 1244
    :pswitch_1
    invoke-direct {p0}, Lcom/android/smith/CollectLogs$LogsThread;->moveLogs()V

    goto :goto_0

    .line 1248
    :pswitch_2
    invoke-direct {p0}, Lcom/android/smith/CollectLogs$LogsThread;->uploadLogs()V

    goto :goto_0

    .line 1237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public tryStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 961
    const-string v0, "SM:CollectLogs"

    const-string v1, "tryStop logs thread"

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    iput-boolean v2, p0, Lcom/android/smith/CollectLogs$LogsThread;->trystop:Z

    .line 965
    iget-object v0, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->ftpclient:Lcom/android/smith/FtpClient;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$3100(Lcom/android/smith/CollectLogs;)Lcom/android/smith/FtpClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/android/smith/CollectLogs$LogsThread;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->ftpclient:Lcom/android/smith/FtpClient;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$3100(Lcom/android/smith/CollectLogs;)Lcom/android/smith/FtpClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/smith/FtpClient;->tryStop(Z)V

    .line 969
    :cond_0
    return-void
.end method
