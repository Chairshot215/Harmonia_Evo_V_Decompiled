.class Lcom/htc/omadm/libdo/system/SysLib$ConnHandler;
.super Landroid/os/Handler;
.source "SysLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/libdo/system/SysLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/libdo/system/SysLib;


# direct methods
.method public constructor <init>(Lcom/htc/omadm/libdo/system/SysLib;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/SysLib$ConnHandler;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    .line 138
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 139
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 143
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 145
    :pswitch_0
    const/4 v0, 0x0

    .line 146
    .local v0, connectionResult:Z
    const/16 v1, 0xa

    .line 147
    .local v1, count:I
    :goto_1
    if-lez v1, :cond_1

    .line 148
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib$ConnHandler;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    #getter for: Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;
    invoke-static {v3}, Lcom/htc/omadm/libdo/system/SysLib;->access$000(Lcom/htc/omadm/libdo/system/SysLib;)Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/omadm/util/DMAgentConnector;->openConnection()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    const/4 v0, 0x1

    .line 163
    :cond_1
    if-eqz v0, :cond_0

    .line 164
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib$ConnHandler;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/omadm/libdo/system/SysLib;->key:Ljava/lang/Integer;

    .line 165
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib$ConnHandler;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    iget-object v4, v3, Lcom/htc/omadm/libdo/system/SysLib;->key:Ljava/lang/Integer;

    monitor-enter v4

    .line 166
    :try_start_0
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib$ConnHandler;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    iget-object v3, v3, Lcom/htc/omadm/libdo/system/SysLib;->key:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 167
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 155
    :cond_2
    const-wide/16 v3, 0x3e8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 159
    :catch_0
    move-exception v2

    .line 160
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
