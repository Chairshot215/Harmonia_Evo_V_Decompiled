.class Lcom/htc/omadm/libdo/system/SysLib$WriteDMHandler;
.super Landroid/os/Handler;
.source "SysLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/libdo/system/SysLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WriteDMHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/libdo/system/SysLib;


# direct methods
.method public constructor <init>(Lcom/htc/omadm/libdo/system/SysLib;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 646
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/SysLib$WriteDMHandler;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    .line 647
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 648
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "m"

    .prologue
    .line 652
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 654
    :pswitch_0
    invoke-static {}, Lcom/htc/omadm/util/DMAgentConnector;->getSingleton()Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v3

    .line 656
    .local v3, dmAgent:Lcom/htc/omadm/util/DMAgentConnector;
    const/4 v1, 0x0

    .line 657
    .local v1, connectionResult:Z
    const/16 v2, 0xa

    .line 658
    .local v2, count:I
    :goto_1
    if-lez v2, :cond_1

    .line 659
    invoke-virtual {v3}, Lcom/htc/omadm/util/DMAgentConnector;->openXCMD()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 660
    const/4 v1, 0x1

    .line 678
    :cond_1
    if-eqz v1, :cond_0

    .line 685
    const-string v0, ":R:C021"

    .line 686
    .local v0, cmd:Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/htc/omadm/util/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 691
    .local v5, response:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/htc/omadm/util/DMAgentConnector;->closeConnection()Z

    goto :goto_0

    .line 668
    .end local v0           #cmd:Ljava/lang/String;
    .end local v5           #response:Ljava/lang/String;
    :cond_2
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 674
    :catch_0
    move-exception v4

    .line 675
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 652
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
