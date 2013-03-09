.class public Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;
.super Landroid/os/CountDownTimer;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/gui/ext/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogMessageChangeTimer"
.end annotation


# instance fields
.field postString:Ljava/lang/String;

.field preString:Ljava/lang/String;

.field temp:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/omadm/gui/ext/BaseDialog;


# direct methods
.method public constructor <init>(Lcom/htc/omadm/gui/ext/BaseDialog;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"
    .parameter "preString"
    .parameter "postString"

    .prologue
    .line 935
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    .line 936
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 937
    iput-object p6, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->preString:Ljava/lang/String;

    .line 938
    iput-object p7, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->postString:Ljava/lang/String;

    .line 940
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->preString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->postString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->temp:Ljava/lang/String;

    .line 946
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #getter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogStyle:I
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$2100(Lcom/htc/omadm/gui/ext/BaseDialog;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 954
    :goto_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #getter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mQueuePriority:I
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$100(Lcom/htc/omadm/gui/ext/BaseDialog;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 955
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    const-string v1, "com.htc.andorid.omadm.gui.callback.normal.autoclose"

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->sendCallback(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$200(Lcom/htc/omadm/gui/ext/BaseDialog;Ljava/lang/String;)V

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #getter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mQueuePriority:I
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$100(Lcom/htc/omadm/gui/ext/BaseDialog;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 957
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    const-string v1, "com.htc.andorid.omadm.gui.callback.high.autoclose"

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->sendCallback(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$200(Lcom/htc/omadm/gui/ext/BaseDialog;Ljava/lang/String;)V

    .line 960
    :cond_1
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->clearShowingDialog()V
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$400(Lcom/htc/omadm/gui/ext/BaseDialog;)V

    .line 962
    return-void

    .line 948
    :pswitch_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    iget-object v0, v0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->temp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 951
    :pswitch_1
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    iget-object v0, v0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->temp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 946
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTick(J)V
    .locals 3
    .parameter "millisUntilFinished"

    .prologue
    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->preString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->postString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->temp:Ljava/lang/String;

    .line 968
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #getter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mDialogStyle:I
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$2100(Lcom/htc/omadm/gui/ext/BaseDialog;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 976
    :goto_0
    return-void

    .line 970
    :pswitch_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    iget-object v0, v0, Lcom/htc/omadm/gui/ext/BaseDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->temp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 973
    :pswitch_1
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    iget-object v0, v0, Lcom/htc/omadm/gui/ext/BaseDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$DialogMessageChangeTimer;->temp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 968
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
