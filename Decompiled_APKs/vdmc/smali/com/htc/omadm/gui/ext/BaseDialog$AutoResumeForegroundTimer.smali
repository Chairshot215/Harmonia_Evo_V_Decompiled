.class public Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;
.super Landroid/os/CountDownTimer;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/gui/ext/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoResumeForegroundTimer"
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
    .line 902
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    .line 903
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 904
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 909
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    const-string v1, " ResumeTimer -> Finish"

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$000(Lcom/htc/omadm/gui/ext/BaseDialog;Ljava/lang/String;)V

    .line 910
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #getter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mResumeMode:Z
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$1800(Lcom/htc/omadm/gui/ext/BaseDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    const-string v1, " ResumeTimer -> startActivity"

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$000(Lcom/htc/omadm/gui/ext/BaseDialog;Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.andorid.omadm.dialog.resume"

    iget-object v3, p0, Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #getter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$1900(Lcom/htc/omadm/gui/ext/BaseDialog;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 915
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 4
    .parameter "millisUntilFinished"

    .prologue
    .line 919
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #getter for: Lcom/htc/omadm/gui/ext/BaseDialog;->mResumeMode:Z
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$1800(Lcom/htc/omadm/gui/ext/BaseDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ResumeTimer -> onTick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$000(Lcom/htc/omadm/gui/ext/BaseDialog;Ljava/lang/String;)V

    .line 928
    :goto_0
    return-void

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->StopAutoResumeForegroundTimer()V
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$2000(Lcom/htc/omadm/gui/ext/BaseDialog;)V

    .line 926
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$AutoResumeForegroundTimer;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    const-string v1, " ResumeTimer -> Cancel(ResumeMode is false)"

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->logView(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$000(Lcom/htc/omadm/gui/ext/BaseDialog;Ljava/lang/String;)V

    goto :goto_0
.end method
