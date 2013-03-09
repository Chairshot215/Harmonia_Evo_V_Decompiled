.class Lcom/htc/omadm/tool/EntryOMADMToolInfo$1;
.super Landroid/os/Handler;
.source "EntryOMADMToolInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/tool/EntryOMADMToolInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/tool/EntryOMADMToolInfo;


# direct methods
.method constructor <init>(Lcom/htc/omadm/tool/EntryOMADMToolInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo$1;->this$0:Lcom/htc/omadm/tool/EntryOMADMToolInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 95
    const-string v0, "EntryOMADMToolInfo"

    const-string v1, "MSG_DM_INITIATE_COMPLETE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0, v2}, Lcom/htc/omadm/tool/EntryOMADMToolInfo$1;->removeMessages(I)V

    .line 101
    iget-object v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo$1;->this$0:Lcom/htc/omadm/tool/EntryOMADMToolInfo;

    #getter for: Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$000(Lcom/htc/omadm/tool/EntryOMADMToolInfo;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 102
    iget-object v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo$1;->this$0:Lcom/htc/omadm/tool/EntryOMADMToolInfo;

    #calls: Lcom/htc/omadm/tool/EntryOMADMToolInfo;->startSecrectMenu()V
    invoke-static {v0}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$100(Lcom/htc/omadm/tool/EntryOMADMToolInfo;)V

    .line 141
    :goto_0
    return-void

    .line 112
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 113
    const-string v0, "EntryOMADMToolInfo"

    const-string v1, "MSG_AT_INITIATE_COMPLETE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0, v2}, Lcom/htc/omadm/tool/EntryOMADMToolInfo$1;->removeMessages(I)V

    .line 116
    invoke-virtual {p0, v3}, Lcom/htc/omadm/tool/EntryOMADMToolInfo$1;->removeMessages(I)V

    .line 117
    invoke-static {}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$200()Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo$1;->this$0:Lcom/htc/omadm/tool/EntryOMADMToolInfo;

    #calls: Lcom/htc/omadm/tool/EntryOMADMToolInfo;->startSecrectMenu()V
    invoke-static {v0}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$100(Lcom/htc/omadm/tool/EntryOMADMToolInfo;)V

    goto :goto_0

    .line 123
    :cond_1
    const-string v0, "EntryOMADMToolInfo"

    const-string v1, "Connect AT DMAgent fail!finish EntryOMADMToolInfo activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo$1;->this$0:Lcom/htc/omadm/tool/EntryOMADMToolInfo;

    #calls: Lcom/htc/omadm/tool/EntryOMADMToolInfo;->finishActivity()V
    invoke-static {v0}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$400(Lcom/htc/omadm/tool/EntryOMADMToolInfo;)V

    goto :goto_0

    .line 127
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_3

    .line 129
    const-string v0, "EntryOMADMToolInfo"

    const-string v1, "MSG_INITIATE_PROGRESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo$1;->this$0:Lcom/htc/omadm/tool/EntryOMADMToolInfo;

    invoke-virtual {v0, v4}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->showDialog(I)V

    goto :goto_0

    .line 133
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_4

    .line 135
    const-string v0, "EntryOMADMToolInfo"

    const-string v1, "MSG_REMOVE_PROGRESS!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo$1;->this$0:Lcom/htc/omadm/tool/EntryOMADMToolInfo;

    invoke-virtual {v0, v4}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->removeDialog(I)V

    goto :goto_0

    .line 139
    :cond_4
    const-string v0, "EntryOMADMToolInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No this message handler ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
