.class Lcom/htc/omadm/tool/OMADMTool$1;
.super Landroid/os/Handler;
.source "OMADMTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/tool/OMADMTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/tool/OMADMTool;


# direct methods
.method constructor <init>(Lcom/htc/omadm/tool/OMADMTool;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/htc/omadm/tool/OMADMTool$1;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 125
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v5, :cond_3

    .line 126
    const-string v2, "OMADMTool"

    const-string v3, "MSG_INITIATE_OMADMTool...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v2, p0, Lcom/htc/omadm/tool/OMADMTool$1;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    new-instance v3, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;

    iget-object v4, p0, Lcom/htc/omadm/tool/OMADMTool$1;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    invoke-direct {v3, v4}, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;-><init>(Lcom/htc/omadm/tool/OMADMTool;)V

    #setter for: Lcom/htc/omadm/tool/OMADMTool;->mResultReceiver:Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;
    invoke-static {v2, v3}, Lcom/htc/omadm/tool/OMADMTool;->access$002(Lcom/htc/omadm/tool/OMADMTool;Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;)Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;

    .line 130
    iget-object v2, p0, Lcom/htc/omadm/tool/OMADMTool$1;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/htc/omadm/tool/OMADMTool;->removeDialog(I)V

    .line 131
    iget-object v2, p0, Lcom/htc/omadm/tool/OMADMTool$1;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    #calls: Lcom/htc/omadm/tool/OMADMTool;->isPhoneOn()Z
    invoke-static {v2}, Lcom/htc/omadm/tool/OMADMTool;->access$100(Lcom/htc/omadm/tool/OMADMTool;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/htc/omadm/tool/OMADMTool$1;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/htc/omadm/tool/OMADMTool;->showDialog(I)V

    .line 152
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/htc/omadm/tool/OMADMTool$1;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    #calls: Lcom/htc/omadm/tool/OMADMTool;->init()V
    invoke-static {v2}, Lcom/htc/omadm/tool/OMADMTool;->access$200(Lcom/htc/omadm/tool/OMADMTool;)V

    .line 136
    iget-object v2, p0, Lcom/htc/omadm/tool/OMADMTool$1;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    invoke-virtual {v2}, Lcom/htc/omadm/tool/OMADMTool;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 137
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/omadm/tool/OMADMTool$1;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    #calls: Lcom/htc/omadm/tool/OMADMTool;->getActionType()I
    invoke-static {v2}, Lcom/htc/omadm/tool/OMADMTool;->access$300(Lcom/htc/omadm/tool/OMADMTool;)I

    move-result v0

    .line 139
    .local v0, actionType:I
    if-nez v0, :cond_1

    .line 141
    iget-object v2, p0, Lcom/htc/omadm/tool/OMADMTool$1;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    invoke-virtual {v2}, Lcom/htc/omadm/tool/OMADMTool;->finish()V

    goto :goto_0

    .line 142
    :cond_1
    if-ne v0, v5, :cond_2

    .line 143
    iget-object v2, p0, Lcom/htc/omadm/tool/OMADMTool$1;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    invoke-virtual {v2, v5}, Lcom/htc/omadm/tool/OMADMTool;->showDialog(I)V

    goto :goto_0

    .line 145
    :cond_2
    iget-object v2, p0, Lcom/htc/omadm/tool/OMADMTool$1;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/htc/omadm/tool/OMADMTool;->showDialog(I)V

    goto :goto_0

    .line 150
    .end local v0           #actionType:I
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    const-string v2, "OMADMTool"

    const-string v3, "No thie message handler!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
