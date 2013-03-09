.class public Lcom/htc/omadm/gui/ext/BaseDialog$AutoCloseDialogTimer;
.super Landroid/os/CountDownTimer;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/gui/ext/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoCloseDialogTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/gui/ext/BaseDialog;


# direct methods
.method public constructor <init>(Lcom/htc/omadm/gui/ext/BaseDialog;JJ)V
    .locals 0
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 880
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$AutoCloseDialogTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    .line 881
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 882
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 887
    const-string v0, "libgo"

    const-string v1, "CountdownSleepTimer -> Finish"

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$AutoCloseDialogTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #getter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mQueuePriority:I
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$100(Lcom/htc/omadm/gui/ext/BaseDialog;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 889
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$AutoCloseDialogTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    const-string v1, "com.htc.andorid.omadm.gui.callback.normal.autoclose"

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->sendCallback(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$200(Lcom/htc/omadm/gui/ext/BaseDialog;Ljava/lang/String;)V

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$AutoCloseDialogTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #getter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mQueuePriority:I
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$100(Lcom/htc/omadm/gui/ext/BaseDialog;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 891
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$AutoCloseDialogTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    const-string v1, "com.htc.andorid.omadm.gui.callback.high.autoclose"

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->sendCallback(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$200(Lcom/htc/omadm/gui/ext/BaseDialog;Ljava/lang/String;)V

    .line 892
    :cond_1
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$AutoCloseDialogTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->dismissDialogAndFinishActivity()V
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$1700(Lcom/htc/omadm/gui/ext/BaseDialog;)V

    .line 893
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 898
    return-void
.end method
