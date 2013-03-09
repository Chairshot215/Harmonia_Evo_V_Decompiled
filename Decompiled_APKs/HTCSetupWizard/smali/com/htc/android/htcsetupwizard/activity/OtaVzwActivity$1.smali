.class Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity$1;
.super Landroid/os/Handler;
.source "OtaVzwActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x8

    .line 250
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 252
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->exit_OtaVzw:Z
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->access$000(Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 281
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->exit_OtaVzw:Z
    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->access$002(Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;Z)Z

    .line 282
    const-string v0, "OOBE_OtaVzwActivity"

    const-string v1, "############# Exit the OtaVzwActivity  ########"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    :pswitch_2
    const-string v0, "OOBE_OtaVzwActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handler:INITIAL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->checkStatus()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->access$100(Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;)V

    goto :goto_0

    .line 264
    :pswitch_3
    const-string v0, "OOBE_OtaVzwActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handler:SUCCESS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mProgressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->access$200(Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mProgressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->access$200(Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 270
    :pswitch_4
    const-string v0, "OOBE_OtaVzwActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handler:FAILED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mProgressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->access$200(Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mProgressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->access$200(Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->checkStatus()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->access$100(Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;)V

    goto/16 :goto_0

    .line 277
    :pswitch_5
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->checkStatus()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->access$100(Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;)V

    goto/16 :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
