.class Lcom/htc/idlescreen/base/util/OOBEMonitor$MyHandler;
.super Landroid/os/Handler;
.source "OOBEMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/util/OOBEMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/util/OOBEMonitor;


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/base/util/OOBEMonitor;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor$MyHandler;->this$0:Lcom/htc/idlescreen/base/util/OOBEMonitor;

    .line 98
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 99
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    .line 103
    .local v0, what:I
    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor$MyHandler;->this$0:Lcom/htc/idlescreen/base/util/OOBEMonitor;

    #calls: Lcom/htc/idlescreen/base/util/OOBEMonitor;->querySetting()V
    invoke-static {v1}, Lcom/htc/idlescreen/base/util/OOBEMonitor;->access$100(Lcom/htc/idlescreen/base/util/OOBEMonitor;)V

    .line 106
    const-string v1, "OOBEMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WHAT_ON_QUERY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor$MyHandler;->this$0:Lcom/htc/idlescreen/base/util/OOBEMonitor;

    #getter for: Lcom/htc/idlescreen/base/util/OOBEMonitor;->mIsOOBEDone:Z
    invoke-static {v3}, Lcom/htc/idlescreen/base/util/OOBEMonitor;->access$200(Lcom/htc/idlescreen/base/util/OOBEMonitor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
