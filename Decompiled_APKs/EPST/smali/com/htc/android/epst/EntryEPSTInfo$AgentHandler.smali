.class final Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;
.super Landroid/os/Handler;
.source "EntryEPSTInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/EntryEPSTInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AgentHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/EntryEPSTInfo;


# direct methods
.method public constructor <init>(Lcom/htc/android/epst/EntryEPSTInfo;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;->this$0:Lcom/htc/android/epst/EntryEPSTInfo;

    .line 102
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 106
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 109
    const-string v0, "EntryEPSTInfo"

    const-string v1, "MSG_DM_INITIATE_COMPLETE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0, v2}, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;->removeMessages(I)V

    .line 112
    invoke-virtual {p0, v3}, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;->removeMessages(I)V

    .line 113
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->access$000()Lcom/htc/android/epst/dmagent/DMAgentConnector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;->this$0:Lcom/htc/android/epst/EntryEPSTInfo;

    #calls: Lcom/htc/android/epst/EntryEPSTInfo;->getPassword()V
    invoke-static {v0}, Lcom/htc/android/epst/EntryEPSTInfo;->access$200(Lcom/htc/android/epst/EntryEPSTInfo;)V

    .line 116
    iget-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;->this$0:Lcom/htc/android/epst/EntryEPSTInfo;

    const-string v1, "C8F8000000"

    #calls: Lcom/htc/android/epst/EntryEPSTInfo;->getOperatorID(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/android/epst/EntryEPSTInfo;->access$300(Lcom/htc/android/epst/EntryEPSTInfo;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;->this$0:Lcom/htc/android/epst/EntryEPSTInfo;

    #calls: Lcom/htc/android/epst/EntryEPSTInfo;->startSecrectMenu()V
    invoke-static {v0}, Lcom/htc/android/epst/EntryEPSTInfo;->access$400(Lcom/htc/android/epst/EntryEPSTInfo;)V

    .line 175
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string v0, "EntryEPSTInfo"

    const-string v1, "Connect DM DMAgent fail!finish EntryEPSTInfo activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;->this$0:Lcom/htc/android/epst/EntryEPSTInfo;

    #calls: Lcom/htc/android/epst/EntryEPSTInfo;->finishActivity()V
    invoke-static {v0}, Lcom/htc/android/epst/EntryEPSTInfo;->access$500(Lcom/htc/android/epst/EntryEPSTInfo;)V

    goto :goto_0

    .line 125
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 126
    const-string v0, "EntryEPSTInfo"

    const-string v1, "MSG_AT_INITIATE_COMPLETE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0, v2}, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;->removeMessages(I)V

    .line 129
    invoke-virtual {p0, v3}, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;->removeMessages(I)V

    .line 130
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->access$600()Lcom/htc/android/epst/dmagent/DMAgentConnector;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->access$700()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;->this$0:Lcom/htc/android/epst/EntryEPSTInfo;

    #calls: Lcom/htc/android/epst/EntryEPSTInfo;->startSecrectMenu()V
    invoke-static {v0}, Lcom/htc/android/epst/EntryEPSTInfo;->access$400(Lcom/htc/android/epst/EntryEPSTInfo;)V

    goto :goto_0

    .line 137
    :cond_2
    const-string v0, "EntryEPSTInfo"

    const-string v1, "Connect AT DMAgent fail!finish EntryEPSTInfo activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;->this$0:Lcom/htc/android/epst/EntryEPSTInfo;

    #calls: Lcom/htc/android/epst/EntryEPSTInfo;->finishActivity()V
    invoke-static {v0}, Lcom/htc/android/epst/EntryEPSTInfo;->access$500(Lcom/htc/android/epst/EntryEPSTInfo;)V

    goto :goto_0

    .line 141
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_4

    .line 143
    const-string v0, "EntryEPSTInfo"

    const-string v1, "MSG_INITIATE_PROGRESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_5

    .line 154
    const-string v0, "EntryEPSTInfo"

    const-string v1, "MSG_REMOVE_PROGRESS!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 159
    const-string v0, "EntryEPSTInfo"

    const-string v1, "MSG_ENTER_DIRECTLY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0, v2}, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;->removeMessages(I)V

    .line 161
    invoke-virtual {p0, v3}, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;->removeMessages(I)V

    .line 162
    iget-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;->this$0:Lcom/htc/android/epst/EntryEPSTInfo;

    #calls: Lcom/htc/android/epst/EntryEPSTInfo;->getPassword()V
    invoke-static {v0}, Lcom/htc/android/epst/EntryEPSTInfo;->access$200(Lcom/htc/android/epst/EntryEPSTInfo;)V

    .line 164
    iget-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;->this$0:Lcom/htc/android/epst/EntryEPSTInfo;

    const-string v1, "C8F8000000"

    #calls: Lcom/htc/android/epst/EntryEPSTInfo;->getOperatorID(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/android/epst/EntryEPSTInfo;->access$300(Lcom/htc/android/epst/EntryEPSTInfo;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;->this$0:Lcom/htc/android/epst/EntryEPSTInfo;

    #calls: Lcom/htc/android/epst/EntryEPSTInfo;->startSecrectMenu()V
    invoke-static {v0}, Lcom/htc/android/epst/EntryEPSTInfo;->access$400(Lcom/htc/android/epst/EntryEPSTInfo;)V

    goto :goto_0

    .line 167
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_7

    .line 169
    const-string v0, "EntryEPSTInfo"

    const-string v1, "MSG_CLEAR_TIRGGER_EVENT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v0, ""

    invoke-static {v0}, Lcom/htc/android/epst/EntryEPSTInfo;->access$802(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 173
    :cond_7
    const-string v0, "EntryEPSTInfo"

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

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
