.class Lcom/htc/android/epst/EPST$1;
.super Landroid/os/Handler;
.source "EPST.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/EPST;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/EPST;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/EPST;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/htc/android/epst/EPST$1;->this$0:Lcom/htc/android/epst/EPST;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 121
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_4

    .line 122
    const-string v2, "EPST"

    const-string v3, "MSG_INITIATE_EPST_ICS_35 Version:1.00.0006-20120426"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v2, p0, Lcom/htc/android/epst/EPST$1;->this$0:Lcom/htc/android/epst/EPST;

    new-instance v3, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    invoke-direct {v3}, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;-><init>()V

    #setter for: Lcom/htc/android/epst/EPST;->mResultReceiver:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;
    invoke-static {v2, v3}, Lcom/htc/android/epst/EPST;->access$002(Lcom/htc/android/epst/EPST;Lcom/htc/android/epst/EPST$LaunchIMEReceiver;)Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    .line 235
    iget-object v2, p0, Lcom/htc/android/epst/EPST$1;->this$0:Lcom/htc/android/epst/EPST;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/EPST;->removeDialog(I)V

    .line 236
    iget-object v2, p0, Lcom/htc/android/epst/EPST$1;->this$0:Lcom/htc/android/epst/EPST;

    #calls: Lcom/htc/android/epst/EPST;->isPhoneOn()Z
    invoke-static {v2}, Lcom/htc/android/epst/EPST;->access$100(Lcom/htc/android/epst/EPST;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/htc/android/epst/EPST$1;->this$0:Lcom/htc/android/epst/EPST;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/EPST;->showDialog(I)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v2, p0, Lcom/htc/android/epst/EPST$1;->this$0:Lcom/htc/android/epst/EPST;

    #calls: Lcom/htc/android/epst/EPST;->init()V
    invoke-static {v2}, Lcom/htc/android/epst/EPST;->access$200(Lcom/htc/android/epst/EPST;)V

    .line 241
    iget-object v2, p0, Lcom/htc/android/epst/EPST$1;->this$0:Lcom/htc/android/epst/EPST;

    invoke-virtual {v2}, Lcom/htc/android/epst/EPST;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 242
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/android/epst/EPST$1;->this$0:Lcom/htc/android/epst/EPST;

    #calls: Lcom/htc/android/epst/EPST;->getActionType()I
    invoke-static {v2}, Lcom/htc/android/epst/EPST;->access$300(Lcom/htc/android/epst/EPST;)I

    move-result v0

    .line 244
    .local v0, actionType:I
    iget-object v2, p0, Lcom/htc/android/epst/EPST$1;->this$0:Lcom/htc/android/epst/EPST;

    invoke-virtual {v2}, Lcom/htc/android/epst/EPST;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    if-nez v0, :cond_2

    .line 246
    iget-object v2, p0, Lcom/htc/android/epst/EPST$1;->this$0:Lcom/htc/android/epst/EPST;

    #calls: Lcom/htc/android/epst/EPST;->startSettingUI(I)V
    invoke-static {v2, v4}, Lcom/htc/android/epst/EPST;->access$400(Lcom/htc/android/epst/EPST;I)V

    .line 247
    iget-object v2, p0, Lcom/htc/android/epst/EPST$1;->this$0:Lcom/htc/android/epst/EPST;

    invoke-virtual {v2}, Lcom/htc/android/epst/EPST;->finish()V

    goto :goto_0

    .line 248
    :cond_2
    if-ne v0, v4, :cond_3

    .line 250
    iget-object v2, p0, Lcom/htc/android/epst/EPST$1;->this$0:Lcom/htc/android/epst/EPST;

    invoke-virtual {v2, v4}, Lcom/htc/android/epst/EPST;->showDialog(I)V

    goto :goto_0

    .line 252
    :cond_3
    iget-object v2, p0, Lcom/htc/android/epst/EPST$1;->this$0:Lcom/htc/android/epst/EPST;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/EPST;->showDialog(I)V

    goto :goto_0

    .line 257
    .end local v0           #actionType:I
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    const-string v2, "EPST"

    const-string v3, "No thie message handler!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
