.class final Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;
.super Landroid/os/Handler;
.source "FieldTrial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/fieldtrial/FieldTrial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AgentHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/fieldtrial/FieldTrial;


# direct methods
.method public constructor <init>(Lcom/htc/android/fieldtrial/FieldTrial;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;->this$0:Lcom/htc/android/fieldtrial/FieldTrial;

    .line 115
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 116
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 120
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    .line 122
    iget-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;->this$0:Lcom/htc/android/fieldtrial/FieldTrial;

    const v1, 0x7f05000c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_3

    .line 124
    const-string v0, "FieldTrial"

    const-string v1, "MSG_INITIATE_FIELDTRIAL.FieldTrial_ICS version:1.00.0007-20120418"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;->this$0:Lcom/htc/android/fieldtrial/FieldTrial;

    #calls: Lcom/htc/android/fieldtrial/FieldTrial;->isPhoneOn()Z
    invoke-static {v0}, Lcom/htc/android/fieldtrial/FieldTrial;->access$000(Lcom/htc/android/fieldtrial/FieldTrial;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 149
    iget-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;->this$0:Lcom/htc/android/fieldtrial/FieldTrial;

    #calls: Lcom/htc/android/fieldtrial/FieldTrial;->init()V
    invoke-static {v0}, Lcom/htc/android/fieldtrial/FieldTrial;->access$100(Lcom/htc/android/fieldtrial/FieldTrial;)V

    .line 150
    iget-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;->this$0:Lcom/htc/android/fieldtrial/FieldTrial;

    #calls: Lcom/htc/android/fieldtrial/FieldTrial;->isRequireAuthPwd()Z
    invoke-static {v0}, Lcom/htc/android/fieldtrial/FieldTrial;->access$200(Lcom/htc/android/fieldtrial/FieldTrial;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/android/fieldtrial/FieldTrial;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;->this$0:Lcom/htc/android/fieldtrial/FieldTrial;

    invoke-virtual {v0, v3}, Lcom/htc/android/fieldtrial/FieldTrial;->showDialog(I)V

    .line 152
    iget-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;->this$0:Lcom/htc/android/fieldtrial/FieldTrial;

    iget-object v0, v0, Lcom/htc/android/fieldtrial/FieldTrial;->mAgentHandler:Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;->this$0:Lcom/htc/android/fieldtrial/FieldTrial;

    invoke-virtual {v0, v3}, Lcom/htc/android/fieldtrial/FieldTrial;->removeDialog(I)V

    .line 161
    iget-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;->this$0:Lcom/htc/android/fieldtrial/FieldTrial;

    invoke-virtual {v0, v4}, Lcom/htc/android/fieldtrial/FieldTrial;->showDialog(I)V

    goto :goto_0

    .line 164
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    .line 165
    iget-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;->this$0:Lcom/htc/android/fieldtrial/FieldTrial;

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/FieldTrial;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;->this$0:Lcom/htc/android/fieldtrial/FieldTrial;

    invoke-virtual {v0, v3}, Lcom/htc/android/fieldtrial/FieldTrial;->removeDialog(I)V

    .line 166
    :cond_4
    const-string v0, "FieldTrial"

    const-string v1, "start ListGroup Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;->this$0:Lcom/htc/android/fieldtrial/FieldTrial;

    #calls: Lcom/htc/android/fieldtrial/FieldTrial;->startGroupListActivity()V
    invoke-static {v0}, Lcom/htc/android/fieldtrial/FieldTrial;->access$400(Lcom/htc/android/fieldtrial/FieldTrial;)V

    goto :goto_0
.end method
